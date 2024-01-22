cask "spotube" do
  version "3.4.0"
  sha256 "7627f679cdfb40bf4554f1a0aaabed076cd15fa3f7342b61e45167a40491fc0b"

  url "https://github.com/KRTirtho/spotube/releases/download/v#{version}/Spotube-macos-universal.dmg",
      verified: "github.com/KRTirtho/spotube/"
  name "spotube"
  desc "Open source Spotify client that doesn't require Premium nor uses Electron"
  homepage "https://spotube.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "spotube.app"

  zap trash: [
    "~/Library/Application Scripts/oss.krtirtho.spotube",
    "~/Library/Containers/oss.krtirtho.spotube",
  ]
end
