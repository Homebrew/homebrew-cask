cask "spotify-soloist" do
  version :latest
  sha256 :no_check

  url "https://soloist-builds.spotifycdn.com/soloist_release_osx_arm64.tar.gz"
  name "Spotify Soloist"
  desc "Headless Spotify client"
  homepage "https://developer.spotify.com/documentation/soloist"

  depends_on arch: :arm64
  depends_on macos: :ventura

  binary "soloist"

  zap trash: [
    "~/Library/Application Support/soloist",
    "~/Library/Caches/soloist",
  ]
end
