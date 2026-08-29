cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.16.2.1"
  sha256 arm:   "6a88b9eba2c634686dd57872c990a56bb925ee59345b34eadf76813242a1caef",
         intel: "e81e5e99700d9d5e1dd7eac87724f148a3b25dfc6ce16a1c4fea70276c68c053"

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
  depends_on macos: :ventura

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
