cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.6.1"
  sha256 arm:   "6f108b0e0f2239cb7f3d1f1179a6b4150f0f7bfafd729ea2e5d6591df5977946",
         intel: "19666a7690ac8be445a363ca3b149c55adfa0f3d1ec59c116c19def507094d07"

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
