cask "sauerbraten" do
  version "2020.11.29,2020.12.20"
  sha256 "47e61c7a3df2777735a22b8569d99030e0dbf5e3e2fd800380dd1a8f6fd63eb2"

  url "https://downloads.sourceforge.net/sauerbraten/sauerbraten/#{version.before_comma.dots_to_underscores}/sauerbraten_#{version.after_comma.dots_to_underscores}_macos.dmg",
      verified: "sourceforge.net/sauerbraten/"
  appcast "https://sourceforge.net/projects/sauerbraten/rss",
          must_contain: version.after_comma.dots_to_underscores
  name "Cube 2: Sauerbraten"
  homepage "http://cubeengine.com/"

  app "Sauerbraten.app"
end
