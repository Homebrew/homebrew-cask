cask "freesmug-chromium" do
  version "84.0.4147.135"
  sha256 "d2011c452cb50aa9546860dede8a490263dc776fe385095bb11bcb4cd54bd10b"

  # sourceforge.net/osxportableapps/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast "https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium"
  name "Chromium"
  homepage "http://www.freesmug.org/chromium"

  conflicts_with cask: [
    "chromium",
    "eloston-chromium",
  ]

  app "Chromium.app"
end
