cask "recall" do
  version "1.6.4"
  sha256 "a848519305c465956cb6d2f01e0decc29010d261a91d8ff72ef036973aa8a74b"

  url "https://github.com/AsherJN/recall/releases/download/v#{version}/Recall-#{version}.dmg"
  name "Recall"
  desc "Play Overwatch on Apple Silicon"
  homepage "https://github.com/AsherJN/recall"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Recall.app"

  uninstall quit: "org.overwatch2mac.launcher"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Recall_*.plist",
    "~/Library/Application Support/Overwatch2Mac",
    "~/Library/Caches/org.overwatch2mac.launcher",
    "~/Library/HTTPStorages/org.overwatch2mac.launcher*",
    "~/Library/Preferences/org.overwatch2mac.launcher.plist",
    "~/Library/Saved Application State/org.overwatch2mac.launcher.savedState",
  ]
end
