cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.2.1"
  sha256 arm:   "d15c39899e08ae8d061c338e221e44e1c25b5576aa63479d7981af58301dc3c1",
         intel: "92a2fe581e412d0af0769bd38d4b774319927c9473906ce5b49984856dff7e12"

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
