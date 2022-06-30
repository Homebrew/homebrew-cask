cask "iceberg" do
  version "1.3.1"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Iceberg.dmg"
  appcast "http://s.sudre.free.fr/Software/documentation/Iceberg/English.lproj/documentation/Release%20Notes.html"
  name "Iceberg"
  homepage "http://s.sudre.free.fr/Software/Iceberg.html"

  pkg "Iceberg.mpkg"

  uninstall pkgutil: [
              "fr.white.iceberg.pkg.*",
              "fr.whitebox.pkg.*",
            ],
            script:  {
              executable: "uninstall.sh",
              sudo:       true,
            }
end
