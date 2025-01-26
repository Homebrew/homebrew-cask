cask "celestia" do
  version "1.6.4"
  sha256 "bfb0d0070be9a240a9e3df39495a43223a18dc7757f523ba71dbe8f0bdcaf9e3"

  url "https://github.com/CelestiaProject/Celestia/releases/download/#{version}/celestia-#{version}-macOS.zip",
      verified: "github.com/CelestiaProject/Celestia/"
  name "Celestia"
  desc "Space simulation for exploring the universe in three dimensions"
  homepage "https://celestiaproject.space/"

  livecheck do
    url "https://celestiaproject.space/download.html"
    regex(/href=.*?celestia[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.zip/i)
  end

  app "Celestia.app"

  zap trash: [
    "~/Library/Application Scripts/space.celestia.Celestia",
    "~/Library/Containers/space.celestia.Celestia",
  ]
end
