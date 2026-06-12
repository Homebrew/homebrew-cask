cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.3.1"
  sha256 arm:   "e12790c5b9ddf6716d5af50e14f6c416016cd4b1689e05da034d94236a9f7670",
         intel: "cd91ffbbf771dd5ba1e308aa310fc4d24353fd0e18b01acb7c1457d775448759"

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
