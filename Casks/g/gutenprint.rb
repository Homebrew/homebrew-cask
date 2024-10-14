cask "gutenprint" do
  version "5.3.3"
  sha256 "6dd810482845604a1e17fc3aef48a03d178798c14fe6f106a443f5af14022519"

  url "https://downloads.sourceforge.net/gimp-print/gutenprint-#{version.major_minor}/#{version}/gutenprint-#{version}.dmg",
      verified: "downloads.sourceforge.net/gimp-print/"
  name "Gutenprint"
  desc "Drivers for various printers for use with CUPS and GIMP"
  homepage "https://gimp-print.sourceforge.io/"

  deprecate! date: "2024-10-14", because: :discontinued

  pkg "gutenprint-#{version}.pkg"

  uninstall script:  [
              { executable: "#{staged_path}/uninstall-gutenprint.command",
                sudo:       true },
            ],
            pkgutil: "org.gutenprint.printer-driver",
            delete:  [
              "/usr/libexec/cups/backend/gutenprint*",
              "/usr/libexec/cups/driver/gutenprint*",
              "/usr/libexec/cups/filter/rastertogutenprint*",
            ]
end
