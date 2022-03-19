cask "sauerbraten" do
  version "2020.11.29,2020.12.21"
  sha256 "a7e26c85ff15be88b9ced26e64c2fa0e68bde1325c146763833abac591898bcb"

  url "https://downloads.sourceforge.net/sauerbraten/sauerbraten/#{version.csv.first.dots_to_underscores}/sauerbraten_#{version.csv.second.dots_to_underscores}_macos.dmg",
      verified: "sourceforge.net/sauerbraten/"
  name "Cube 2: Sauerbraten"
  desc "Multiplayer & singleplayer first person shooter"
  homepage "http://sauerbraten.org/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{(\d+(?:_\d+)*)/sauerbraten[._-]?(\d+(?:_\d+)*)[._-]?macos.dmg}i)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2].tr("_", ".")}"
    end
  end

  app "Sauerbraten.app"
end
