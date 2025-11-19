cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.5.1"
  sha256 arm:   "6731bf4904f832e0087e034a1829c78654b45381350d25dd1fe63f048fde269c",
         intel: "1fa35764584248c33231d3b9f3ac82315990b9bcf4870932e81ae295a2950845"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/imputnet/helium-macos/"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
