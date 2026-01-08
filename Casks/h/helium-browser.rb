cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.10.1"
  sha256 arm:   "8779d68e6a2228298f6bbc64327d36bb146d1302a170ead34ed06ca50a91fc7b",
         intel: "05494548b5969c9e688ab5a1a83dcdc61e3aedfc0dc8f3b13d1e093d356a158e"

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
