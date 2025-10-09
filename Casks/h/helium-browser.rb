cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.5.1"
  sha256 arm:   "40e404126526eb44a6d7dee469d86be19d7f69b76c6db430e80adac7c600215a",
         intel: "b3cbc5c7f9775ede774b649838417466e53c2951d3ffbf2089c364d96de88f07"

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
