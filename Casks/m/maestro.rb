cask "maestro" do
  arch arm:   "arm64",
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  name_prefix = on_system_conditional macos: "Maestro", linux: "maestro"
  url_end = on_system_conditional macos: "-mac.dmg", linux: ".AppImage"

  version "0.17.7"
  sha256 arm:          "39f5c37f18c6da326154bb62be8e15ecc746c36515ed427694ed2c7fe456a09a",
         intel:        "9372d0a1d489d77b14dcffb390c423b1ab99c36cec5ac362d4b1c14bc68bac4d",
         arm64_linux:  "55e9f31a08ec31f07e846ce3657268c9faed6cb0cd4b560910ee659d43397088",
         x86_64_linux: "9b4ab7e9f66f5f55f2428c6e4d75a67b4869843bd1cde7adf4c48c74bede8d5a"

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
