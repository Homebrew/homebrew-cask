cask "maestro" do
  arch arm:   "arm64",
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  name_prefix = on_system_conditional macos: "Maestro", linux: "maestro"
  url_end = on_system_conditional macos: "-mac.dmg", linux: ".AppImage"

  version "1.0.4"
  sha256 arm:          "8a310b42fafe27552a60e72f299ff440c4c93606d2337f06046c9ece21c66515",
         intel:        "7e05ea695633ec9caa072777d73a4a8e3887008572f7d9869f3424c8fd81705e",
         arm64_linux:  "cbc575882d1f3ea3ac1f44b37328e7e68885fe1a5b313578dbac185d0b7a6c7b",
         x86_64_linux: "a409669feb51f0145278423618c9f71f35123e0ba30c2657930e640ce631f5ce"

  release_version = version.csv.second || version.csv.first
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
    app_image "maestro-#{release_version}-#{arch}.AppImage", target: "Maestro.AppImage"

    zap trash: "~/.config/maestro"
  end

  url "https://github.com/pedramamini/Maestro/releases/download/v#{release_version}/#{name_prefix}-#{release_version}-#{arch}#{url_end}"
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

      [version, tag_version].uniq.join(",")
    end
  end

  auto_updates true
end
