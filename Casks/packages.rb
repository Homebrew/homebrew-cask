cask "packages" do
  version "1.2.9"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Packages.dmg"
  appcast "http://s.sudre.free.fr/Software/Packages/release_notes.html"
  name "Packages"
  homepage "http://s.sudre.free.fr/Software/Packages/about.html"

  auto_updates true

  pkg "packages/Packages.pkg"

  uninstall script: "Extras/uninstall.sh"
end
