cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.3.1"
  sha256 arm:   "24e062628426b5c64b64b016ae84d59f411f7f9127b43d948092913ff138699f",
         intel: "540041cf725492e7f33a706a7b0703a646453705c8a10defa6a61c5d33afab5f"

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
