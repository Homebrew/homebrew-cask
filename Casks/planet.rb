cask "planet" do
  version "0.13.2"
  sha256 "47f539176de2f013a9803ec588e3bf9d4a109876498cb03ac26ec1e0bb508933"

  url "https://github.com/Planetable/Planet/releases/download/release-#{version}/Planet.zip",
      verified: "github.com/Planetable/Planet/"
  name "Planet"
  desc "Decentralized blogs and websites powered by IPFS and Ethereum Name System"
  homepage "https://www.planetable.xyz/"

  livecheck do
    url :url
    regex(/^release-(\d+(?:[.-]\d+)+)$/i)
  end

  auto_updates true

  app "Planet.app"

  zap trash: "~/Library/Containers/xyz.planetable.Planet"
end
