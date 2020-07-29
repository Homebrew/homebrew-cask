cask "sauerbraten" do
  version "2013.01.26"
  sha256 "c6807484fa0d2c42ac774b97f9b21e9eace720e4403abc11b0321b2645d3589d"

  # sourceforge.net/sauerbraten/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sauerbraten/sauerbraten_#{version.dots_to_underscores}_collect_edition_macosx.dmg"
  appcast "https://sourceforge.net/projects/sauerbraten/rss",
          must_contain: version.dots_to_underscores
  name "Cube 2: Sauerbraten"
  homepage "http://cubeengine.com/"

  app "Sauerbraten.app"
end
