cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.1.1"
  sha256 arm:   "a01d9a250704e45b520e5c44a7e959e7c2b71d7fc47805ceab92b7c3f9b8ab3f",
         intel: "bb37645c59c795c071cf796789778a5f36395d6036ec15124f69747de8d78b44"

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
