cask "packages" do
  version "1.2.9"
  sha256 "70ac111417728c17b1f27d5520afd87c33f899f12de8ace0f703e3e1c500b28e"

  url "http://s.sudre.free.fr/Software/files/Packages.dmg"
  appcast "http://s.sudre.free.fr/Software/Packages/release_notes.html"
  name "Packages"
  homepage "http://s.sudre.free.fr/Software/Packages/about.html"

  auto_updates true

  pkg "packages/Packages.pkg"

  uninstall script: "Extras/uninstall.sh"
end
