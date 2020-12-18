cask "librepcb" do
  version "0.1.5"
  sha256 "aade81fb35bae849dbef43cf9a46351c73602c0cc0c5279c99606e103c0790f6"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-x86_64.dmg"
  appcast "https://download.librepcb.org/releases"
  name "LibrePCB"
  homepage "https://librepcb.org/"

  app "librepcb.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.librepcb.savedState"
end
