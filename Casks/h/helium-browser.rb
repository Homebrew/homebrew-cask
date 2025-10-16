cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.6.1"
  sha256 arm:   "e19a1249f799c59a643a69713988919c98f46aded4dfaf3bb50d525d6160fee8",
         intel: "1d5d97b4cda385eff04a539fd1e21082cac9c9d75e6bc8dd0fe5f09383d9b298"

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
