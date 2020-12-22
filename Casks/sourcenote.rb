cask "sourcenote" do
  version "1.2.3"
  sha256 "d17dedd9fe1af70879d9e492c653af6ab5828cad107057c7f99acec87a640884"

  url "https://www.sourcenoteapp.com/releases/SourceNote_#{version}.dmg"
  name "SourceNote"
  homepage "https://www.sourcenoteapp.com/"

  livecheck do
    url "https://sourcenoteapp.com/releases/appcast.xml"
    strategy :sparkle
  end

  app "SourceNote.app"
end
