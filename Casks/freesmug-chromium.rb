cask "freesmug-chromium" do
  version "85.0.4183.83"
  sha256 "03676baff11bad7927459c5e183e251a1b4a4245aabd34aaa8f5adc02a5e1cab"

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
