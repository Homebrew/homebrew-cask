cask "maestro" do
  arch arm:   "arm64",
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  name_prefix = on_system_conditional macos: "Maestro", linux: "maestro"
  url_end = on_system_conditional macos: "-mac.dmg", linux: ".AppImage"

  version "0.17.4"
  sha256 arm:          "a6160f7c400ffac88f25424a44185c0e49f7ddef971bcafda0f26aaa96b089a4",
         intel:        "bb5bfc2e772a69f2dd620d116c468961ec009a312036773033bc6682a447ff80",
         arm64_linux:  "e8eee72da41d811b55ec24013214800137a31004110fe45325b32d4b67c089f3",
         x86_64_linux: "fff3fd1c79eefed508e8261a57de39bed8fa7942ac225fad69b679b54d5cd715"

  on_macos do
    depends_on macos: :monterey

    app "Maestro.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
      "~/Library/Application Support/maestro",
      "~/Library/Preferences/com.maestro.app.plist",
    ]
  end
  on_linux do
    app_image "maestro-#{version.csv.second || version.csv.first}-#{arch}.AppImage", target: "Maestro.AppImage"

    zap trash: "~/.config/maestro"
  end

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version.csv.second || version.csv.first}/#{name_prefix}-#{version.csv.second || version.csv.first}-#{arch}#{url_end}"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-RC)?)/i)
    strategy :github_latest do |json, regex|
      version = json["name"]&.[](regex, 1)
      tag_version = json["tag_name"]&.[](regex, 1)
      next if version.blank? || tag_version.blank?

      (version == tag_version) ? tag_version : "#{version},#{tag_version}"
    end
  end

  auto_updates true
end
