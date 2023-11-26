cask "sourcenote" do
  version "1.3.2"
  sha256 "842bc3b739fbc361d19378b40a4115a4c4e4661bd95f61776063b6f9707c211e"

  url "https://www.sourcenoteapp.com/releases/SourceNote_#{version}.dmg"
  name "SourceNote"
  desc "Text snippet app"
  homepage "https://www.sourcenoteapp.com/"

  livecheck do
    url "https://www.sourcenoteapp.com/releases/appcast.xml"
    strategy :sparkle
  end

  app "SourceNote.app"
end
