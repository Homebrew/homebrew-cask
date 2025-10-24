cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.8.1"
  sha256 arm:   "a61dd242a2089d2959f6be8fc768c60015f40fe6c231e0b0141ffc89e7ad5f1b",
         intel: "1bb58cdad15b8e3d53d2dae73239230f6e6eae176a57a24302fcf814b4bf2b3d"

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
