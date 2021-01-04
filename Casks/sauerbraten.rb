cask "sauerbraten" do
  version "2020.11.29,2020.12.21"
  sha256 "a7e26c85ff15be88b9ced26e64c2fa0e68bde1325c146763833abac591898bcb"

  url "https://downloads.sourceforge.net/sauerbraten/sauerbraten/#{version.before_comma.dots_to_underscores}/sauerbraten_#{version.after_comma.dots_to_underscores}_macos.dmg",
      verified: "sourceforge.net/sauerbraten/"
  appcast "https://sourceforge.net/projects/sauerbraten/rss",
          must_contain: version.after_comma.dots_to_underscores
  name "Cube 2: Sauerbraten"
  homepage "http://cubeengine.com/"

  app "Sauerbraten.app"
end
