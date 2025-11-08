cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.4.1"
  sha256 arm:   "000f4f42eb57c72290fa6f9b1b35f95ce07d7a21153058af68c3823d5d7f2216",
         intel: "993ae2152aa7c8b87cfc2f6f9d2ec6ee93a023285428329c4f293593f329fe9a"

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
