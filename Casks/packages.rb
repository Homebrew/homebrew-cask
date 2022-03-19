cask "packages" do
  version "1.2.10"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Packages.dmg"
  name "Packages"
  desc "Integrated packaging environment"
  homepage "http://s.sudre.free.fr/Software/Packages/about.html"

  livecheck do
    url "http://s.sudre.free.fr/Software/Packages/release_notes.html"
    regex(/Release_notes_Version[^>]*>\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "packages/Packages.pkg"

  uninstall script: "Extras/uninstall.sh"
end
