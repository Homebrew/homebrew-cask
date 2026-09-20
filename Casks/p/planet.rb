cask "planet" do
  version "0.22.4"
  sha256 "2ec4e1e067ab0e1d6820d57a7a9cdaadcdecc52fa32a567ae48546930a6cb88a"

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

  zap trash: "~/Library/Containers/xyz.planetable.Planet"
end
