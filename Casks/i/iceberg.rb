cask "iceberg" do
  version "1.3.1"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Iceberg.dmg"
  name "Iceberg"
  desc "Integrated packaging environment"
  homepage "http://s.sudre.free.fr/Software/Iceberg.html"

  livecheck do
    url "http://s.sudre.free.fr/Software/documentation/Iceberg/English.lproj/documentation/Release%20Notes.html"
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  pkg "Iceberg.mpkg"

  uninstall script:  {
              executable: "uninstall.sh",
              sudo:       true,
            },
            pkgutil: [
              "fr.white.iceberg.pkg.*",
              "fr.whitebox.pkg.*",
            ]

  zap trash: "/Library/Application Support/Iceberg"
end
