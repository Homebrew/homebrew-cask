cask "planet" do
  version "0.22.1"
  sha256 "8c4c03821c5030a5181a0df04e328b54eab0138b94b39e25d27c48a62f2df8eb"

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
