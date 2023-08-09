cask "planet" do
  version "0.14.1"
  sha256 "13ed8e12e807a1523f57d5c5bfd1d13c021471a37eb3e4522b80d8025a9498d4"

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
