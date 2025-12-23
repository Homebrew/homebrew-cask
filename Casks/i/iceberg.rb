cask "iceberg" do
  version "1.3.1"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Iceberg.dmg"
  name "Iceberg"
  desc "Integrated packaging environment"
  homepage "http://s.sudre.free.fr/Software/Iceberg.html"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

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
