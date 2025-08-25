cask "mumood" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.14"
  sha256 arm:   "301ff89fb0e7fff8d3283c1d05165c62c42c042a480d026ce25a50de83554ba7",
         intel: "5af35e76540547721a283e28fa053f2d2d43c631468c1e709f0a0ea82bca8e97"

  url "https://mumood.com/api/download?arch=#{arch}&tag=v#{version}"
  name "MuMood"
  desc "Wallpaper engine that adapts to your music (Apple Music/Spotify)"
  homepage "https://mumood.com/"

  livecheck do
    url "https://mumood.com/api/appcast?arch=arm64"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MuMood.app"

  zap trash: [
    "~/Library/Caches/com.mumood.app",
    "~/Library/Preferences/com.mumood.app.plist",
    "~/Library/Saved Application State/com.mumood.app.savedState",
  ]
end
