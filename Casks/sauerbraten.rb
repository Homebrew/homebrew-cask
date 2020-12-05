cask "sauerbraten" do
  version "2020.11.29,2020.12.04"
  sha256 "6f35ac3bc0574118d80fe769e13f85b67a8e8fc789b467f0a53597b989fe5356"

  # sourceforge.net/sauerbraten/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sauerbraten/sauerbraten/#{version.before_comma.dots_to_underscores}/sauerbraten_#{version.after_comma.dots_to_underscores}_macos.dmg"
  appcast "https://sourceforge.net/projects/sauerbraten/rss",
          must_contain: version.after_comma.dots_to_underscores
  name "Cube 2: Sauerbraten"
  homepage "http://cubeengine.com/"

  app "Sauerbraten.app"
end
