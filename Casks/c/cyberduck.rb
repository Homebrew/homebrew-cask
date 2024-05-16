cask "cyberduck" do
  version "8.9.0,41543"
  sha256 "cbf52374553d748343a8882e97194578ca07113977bcb55aa69e05c2ce3945bb"

  url "https://update.cyberduck.io/Cyberduck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Cyberduck"
  desc "Server and cloud storage browser"
  homepage "https://cyberduck.io/"

  livecheck do
    url "https://version.cyberduck.io/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cyberduck.app"

  zap trash: [
    "~/Library/Application Support/Cyberduck",
    "~/Library/Caches/ch.sudo.cyberduck",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/Logs/Cyberduck",
    "~/Library/Preferences/ch.sudo.cyberduck.plist",
    "~/Library/Saved Application State/ch.sudo.cyberduck.savedState",
  ]
end
