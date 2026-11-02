cask "clementine" do
  version "1.4.4"
  sha256 "fa10fcfc3744005e484f5ed89189f2f29ee8692c3694e5536b9211d4d776d988"

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
