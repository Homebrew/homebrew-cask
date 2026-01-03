cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.9.1"
  sha256 arm:   "b301715a01ce3617737cba70195a237bf71e4f0099166a0edc505e21b8ea21a6",
         intel: "35b64a5ca852d0c5057b52fa8042a7cee268e65886473f8c79cf8d24991b2ab2"

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
