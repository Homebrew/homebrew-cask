cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.9.1"
  sha256 arm:   "711adb0171f91ae755e4608d5622269bff2f8899d9081016612fcbe5eb5ae905",
         intel: "b98732168680ea6970219f3e045ae20fcf9da3e554c74fdb0da7b0897147735a"

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
