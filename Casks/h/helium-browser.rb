cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.3.1"
  sha256 arm:   "307f2c956014b3b0620dd57517ce3b6c08445269627d9b51619baf121e7043ac",
         intel: "a206490dc90eb269d32ec4c1cdc642a53a4c6b49555356da9b83db3b82b4badb"

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
