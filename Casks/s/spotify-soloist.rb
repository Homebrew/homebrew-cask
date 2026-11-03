cask "spotify-soloist" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "osx_"

  version :latest
  sha256 :no_check

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    zap trash: [
      "~/Library/Application Support/soloist",
      "~/Library/Caches/soloist",
    ]
  end
  on_linux do
    zap trash: [
      "~/.cache/soloist",
      "~/.local/share/soloist",
    ]
  end

  url "https://soloist-builds.spotifycdn.com/soloist_release_#{os}#{arch}.tar.gz"
  name "Spotify Soloist"
  desc "Headless Spotify client"
  homepage "https://developer.spotify.com/documentation/soloist"

  binary "soloist"
end
