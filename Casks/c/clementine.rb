cask "clementine" do
  version "1.4.3"
  sha256 "226a9a4e7ea27e96f89e384f52970e316364e256b05ead94c8ff7b8b5ad14c58"

  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  name "Clementine"
  desc "Music player and library organiser"
  homepage "https://www.clementine-player.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Clementine.app"

  zap trash: [
    "~/Library/Application Support/Clementine",
    "~/Library/Caches/org.clementine-player.clementine",
    "~/Library/Preferences/org.clementine-player.clementine.plist",
    "~/Library/Saved Application State/org.clementine-player.clementine.savedState",
  ]
end
