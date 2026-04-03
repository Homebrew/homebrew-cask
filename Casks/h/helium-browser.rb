cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.8.1"
  sha256 arm:   "0d6993c0d2ad83ed5d55b59c6cff792329b41a15028be09a79abab35a1c1104f",
         intel: "ad8123c6d462e44fb54721e6737b754a34b42dc2ca0a0fb44e55d9c6a98ca00e"

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
