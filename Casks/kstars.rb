cask "kstars" do
  version "3.4.3"
  sha256 "6bf27a3c97a81b520783d5ea864faa9ee3343ed5aa6e1a38f88f49e2e829375b"

  # indilib.org/jdownloads/kstars/ was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name "KStars"
  homepage "https://edu.kde.org/kstars/"

  app "kstars.app"
end
