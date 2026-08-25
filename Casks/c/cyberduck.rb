cask "cyberduck" do
  version "9.5.4,45528"
  sha256 "9398777ad01bfac7228db3990aed1c834437a599664e0f3e27a68feb53cbcebf"

  url "https://update.cyberduck.io/Cyberduck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Cyberduck"
  desc "Server and cloud storage browser"
  homepage "https://cyberduck.io/"

  livecheck do
    url "https://version.cyberduck.io/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Cyberduck.app"

  zap trash: [
    "~/Library/Application Support/Cyberduck",
    "~/Library/Caches/ch.sudo.cyberduck",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/HTTPStorages/ch.sudo.cyberduck",
    "~/Library/Logs/Cyberduck",
    "~/Library/Preferences/ch.sudo.cyberduck.plist",
    "~/Library/Saved Application State/ch.sudo.cyberduck.savedState",
  ]
end
