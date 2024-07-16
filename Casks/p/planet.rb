cask "planet" do
  version "0.18.2"
  sha256 "e46e2ac8531ce4b76896697bf91dddf9af01c629b4036a44bae37a9960e3abf5"

  url "https://github.com/Planetable/Planet/releases/download/release-#{version}/Planet.zip",
      verified: "github.com/Planetable/Planet/"
  name "Planet"
  desc "Decentralised blogs and websites powered by IPFS and Ethereum Name System"
  homepage "https://www.planetable.xyz/"

  livecheck do
    url :url
    regex(/^release-(\d+(?:[.-]\d+)+)$/i)
  end

  auto_updates true

  app "Planet.app"

  zap trash: "~/Library/Containers/xyz.planetable.Planet"
end
