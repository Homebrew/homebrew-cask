cask "freesmug-chromium" do
  version "85.0.4183.102"
  sha256 "68ab1ee8be6fbab0a1290a24c36fd573ccf3340f6c14bbcdf88b387bba95b9b2"

  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg",
      verified: "sourceforge.net/osxportableapps/"
  name "Chromium"
  desc "Google Chromium built to solve Chrome incompatibility issue"
  homepage "http://www.freesmug.org/chromium"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with cask: [
    "chromium",
    "eloston-chromium",
  ]

  app "Chromium.app"
end
