cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.5.1"
  sha256 arm:   "7ab9514774131efccd0925dc1ada51dbb77612536bad1bd2ed92c712764ad302",
         intel: "78099e82faec68622705c431b15fb4c17399e68e76b3d473d65e8e979b5dd1fb"

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
