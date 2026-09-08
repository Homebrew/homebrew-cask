cask "clarc" do
  version "1.4.1"
  sha256 "ca7a69fcc74de547d53eaeb33725a8a1fb07ff21af7f2737c9408d1189906928"

  url "https://github.com/ttnear/Clarc/releases/download/v#{version}/Clarc-#{version}.zip"
  name "Clarc"
  desc "Desktop client for Claude Code"
  homepage "https://github.com/ttnear/Clarc"

  auto_updates true
  depends_on macos: :sequoia

  app "Clarc.app"

  uninstall quit: "com.idealapp.Clarc"

  zap trash: [
        "~/Library/Caches/com.idealapp.Clarc",
        "~/Library/HTTPStorages/com.idealapp.Clarc",
        "~/Library/Preferences/com.idealapp.Clarc.plist",
        "~/Library/WebKit/com.idealapp.Clarc",
      ],
      rmdir: "~/Library/Application Support/Clarc"
end
