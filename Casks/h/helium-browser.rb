cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.7.1"
  sha256 arm:   "e6f3e4f744686ec8c71f86ec8e205d792ec35eb3693e95e2b1972b0cbd3cac99",
         intel: "1cae2b691956b11cc0ddab20c202f4c43b966ffed4e3ce3141757eb6b319f8c2"

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
