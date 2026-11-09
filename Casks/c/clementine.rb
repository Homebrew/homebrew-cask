cask "clementine" do
  version "1.4.5"
  sha256 "fca031695f2c594178939823bf7934ca5995520db8bfe87eae4d2531132a7f59"

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
  depends_on macos: :sequoia

  app "Clementine.app"

  zap trash: [
    "~/Library/Application Support/Clementine",
    "~/Library/Caches/org.clementine-player.clementine",
    "~/Library/Preferences/org.clementine-player.clementine.plist",
    "~/Library/Saved Application State/org.clementine-player.clementine.savedState",
  ]
end
