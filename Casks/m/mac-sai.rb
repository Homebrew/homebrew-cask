cask "mac-sai" do
  version "1.19.0"
  sha256 "cbd07f43b17950c853656116c3f8fbab606ac78f40fd76e22fe5ba2eae227d56"

  url "https://github.com/iliyami/MacSai/releases/download/v#{version}/MacSai-#{version}.dmg"
  name "Mac Sai"
  desc "System cleaner, optimiser, and malware scanner"
  homepage "https://github.com/iliyami/MacSai"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mac Sai.app"

  uninstall launchctl: "com.macclean.menu",
            quit:      "com.macclean.app"

  zap trash: [
    "~/Library/Application Support/MacClean",
    "~/Library/Caches/com.macclean.app",
    "~/Library/HTTPStorages/com.macclean.app",
    "~/Library/Logs/MacClean",
    "~/Library/Preferences/com.macclean.app.plist",
    "~/Library/Preferences/com.macclean.shared.plist",
    "~/Library/Saved Application State/com.macclean.app.savedState",
  ]
end
