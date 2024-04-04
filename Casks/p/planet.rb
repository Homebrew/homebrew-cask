cask "planet" do
  version "0.17.0"
  sha256 "102e3d443fe92d4b78b917e5c9312f20dbcecc9d53bfd252b1c3be6ab510a75a"

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
