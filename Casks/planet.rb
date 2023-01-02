cask "planet" do
  version "0.12.0"
  sha256 "1a4d90aaf7aed3b143282144b115d7bb41db52b44064d061a6be6cf3412d29a9"

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
