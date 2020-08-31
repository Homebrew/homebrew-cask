cask "migros-bank-e-banking" do
  version "8.1.2500"
  sha256 "fea31fa340912cd5cab6332fd1b09c3ad366eade655590e7be3c0b42cfce04ad"

  url "https://download.migrosbank.ch/mid/MigrosBank-EBanking-Mac-8.1.2500.pkg"
  name "Migros Bank E-Banking"
  desc "Client for Migros Bank E-Banking (Switzerland)"
  homepage "https://www.migrosbank.ch/de/privatpersonen/e-banking/zugriff.html"

  pkg "MigrosBank-EBanking-Mac-8.1.2500.pkg"

  uninstall pkgutil: [
    "com.kobil.midappqt.PROD",
  ]
end
