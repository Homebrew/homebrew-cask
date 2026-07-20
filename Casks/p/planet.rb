cask "planet" do
  version "0.22.3"
  sha256 "3edb27834d250748f1b819601310bdf33e61729066d05182a88c85ce9570a4b6"

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
