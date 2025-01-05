cask "planet" do
  version "0.19.4"
  sha256 "ce7908a92b3d73d1afbe7a6d7218cba7a5aa7eaf4a7e0fd067dbfc2a1fee9b6b"

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
