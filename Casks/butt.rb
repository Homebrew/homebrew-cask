cask "butt" do
  version "0.1.22"
  sha256 "8ebb005fa788860500866cd23580c188f825febf5813ae96a9383c632f0cdcda"

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast "https://sourceforge.net/projects/butt/rss"
  name "Broadcast Using This Tool"
  homepage "https://danielnoethen.de/"

  app "butt.app"
end
