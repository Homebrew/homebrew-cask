cask "planet" do
  version "0.22.0"
  sha256 "2581556cbb12a422089edea563c9c55910aa8edf84b4932352eb9bc9baddf6cc"

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
  depends_on macos: ">= :monterey"

  app "Planet.app"

  zap trash: "~/Library/Containers/xyz.planetable.Planet"
end
