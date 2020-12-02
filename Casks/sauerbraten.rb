cask "sauerbraten" do
  version "2020.11.29,2020.11.30"
  sha256 "a4c633d40a4464a12ae67ebd7cd897be0d3f415c6617b446324f73f204b7ddd7"

  # sourceforge.net/sauerbraten/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sauerbraten/sauerbraten/#{version.before_comma.dots_to_underscores}/sauerbraten_#{version.after_comma.dots_to_underscores}_macos.dmg"
  appcast "https://sourceforge.net/projects/sauerbraten/rss",
          must_contain: version.after_comma.dots_to_underscores
  name "Cube 2: Sauerbraten"
  homepage "http://cubeengine.com/"

  app "Sauerbraten.app"
end
