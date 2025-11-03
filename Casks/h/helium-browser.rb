cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.3.1"
  sha256 arm:   "4b099fe75fcf254b8406221ee7608f75f1099866816b9d91ad719cedac9ec871",
         intel: "c68f29c698e2a17218a686249bd892e6f4d93cef0a382470a91aa148ed3c4be4"

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
