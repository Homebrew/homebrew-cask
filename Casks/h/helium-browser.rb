cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.3.1"
  sha256 arm:   "06b6dec41942421f61b50132e168ae97fa0d4a7d8c544468aa92d3f1544b10d3",
         intel: "f0bd2cbe5e2099421b545e82e531a9ca2bcd5cfb15206c8a3c4c9d1dff866341"

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
