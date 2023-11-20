cask "lidarr" do
  version "1.4.5.3639"
  sha256 "3474149cf87a9dfff50d5a9cc5d368389871ee16b6be397e5e4b62dd04b7e9ad"

  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app-core-x64.zip",
      verified: "github.com/lidarr/Lidarr/"
  name "Lidarr"
  desc "Looks and smells like Sonarr but made for music"
  homepage "https://lidarr.audio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Lidarr.app"

  zap trash: "~/.config/Lidarr/"

  caveats do
    requires_rosetta
    <<~EOS
      The Apple Silicon build for this cask is not functional so the Intel build is
      required instead.
        https://github.com/orgs/Homebrew/discussions/3088#discussioncomment-7623916
    EOS
  end
end
