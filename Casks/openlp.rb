cask "openlp" do
  version "2.9.2"
  sha256 "37b4febdb870158dd5306edc95a2490708f71048485944e185399f9851097c9d"

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  name "OpenLP"
  homepage "https://openlp.org/"

  livecheck do
    url "https://get.openlp.org"
    strategy :page_match
    regex(/href=['"]?(\d+(?:\.\d+)*)['"]?/i)
  end

  app "OpenLP.app"
end
