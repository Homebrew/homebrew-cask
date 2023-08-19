cask "packages" do
  version "1.2.10"
  # required as the host has HTTP (insecure) transport only, see PR for details
  sha256 "6afdd25386295974dad8f078b8f1e41cabebd08e72d970bf92f707c7e48b16c9"

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

  uninstall script: { executable: "Extras/uninstall.sh", sudo: true }
end
