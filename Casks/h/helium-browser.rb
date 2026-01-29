cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.4.1"
  sha256 arm:   "d166500c8fc054d41297f9bb40ce3b630d9df86c8745a0ad8fce3d86cf39e273",
         intel: "060dda857966a6482e48d343db75b76a118d648f77c97f19ff7d262c5ebd2666"

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
