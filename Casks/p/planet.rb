cask "planet" do
  version "0.22.6"
  sha256 "73b7843c332879dd6ec51172888d06f69a694e1173b47267860f4fc224594c91"

  url "https://github.com/Planetable/Planet/releases/download/release-#{version}/Planet.zip"
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

  uninstall quit: "xyz.planetable.Planet"

  zap trash: "~/Library/Containers/xyz.planetable.Planet"
end
