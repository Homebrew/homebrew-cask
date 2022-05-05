cask "radarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.0.6175"

  if Hardware::CPU.intel?
    sha256 "85094096ef10c789e6b7ac59208f02cb3de0a02dd1acf358cb569e2ff9df984d"
  else
    sha256 "cba7916c86a54d59b35506677620a4f9dc3de4aa45cea916d0b62d194244e93c"
  end

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Radarr.app"

  zap trash: [
    "~/.config/Radarr",
  ]
end
