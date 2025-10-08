cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.3.1"
  sha256 arm:   "5066ec2a3abf283645e152003057fa41d3ad491fbf61b4c0329d4a61e145865b",
         intel: "f70bcb522b69596488242d62c0303ffd1ac1f3b3d46ce83fa3c386a1178b52c6"

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
