cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.5.1"
  sha256 arm:   "abe0ed4d73d13ab164c77c17e7e5c0b3b003494d1059f1d0ece90a42b5cf2351",
         intel: "8361d06afd0662f92891bde4bb38b3520e76f75eb6a2cf9b105044608b313793"

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
  depends_on macos: :monterey

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
