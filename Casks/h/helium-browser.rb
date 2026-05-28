cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.5.1"
  sha256 arm:   "bb0b3a3944f257afc48e8d45a859e93521b7b5350614c35e96b7b1da6d5899dd",
         intel: "889495e52f4b33b56fa67e20d9c747ce0240a948c1bd47eefa2cd487937798a2"

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
