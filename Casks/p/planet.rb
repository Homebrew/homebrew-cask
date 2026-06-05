cask "planet" do
  version "0.22.2"
  sha256 "014af4168004190a1961da08a6ac1d742e21711cd39ad18b24401e3ab848ab0d"

  url "https://github.com/Planetable/Planet/releases/download/release-#{version}/Planet.zip",
      verified: "github.com/Planetable/Planet/"
  name "Planet"
  desc "Decentralised blogs and websites powered by IPFS and Ethereum Name System"
  homepage "https://www.planetable.xyz/"

  livecheck do
    url :url
    regex(/^release[._-](\d+(?:[.-]\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Planet.app"

  zap trash: "~/Library/Containers/xyz.planetable.Planet"
end
