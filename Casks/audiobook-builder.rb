cask "audiobook-builder" do
  version "2.2.5"
  sha256 "0872495ba81ad80943505ec294b43e5e99ec88fb97b9e1463bb3b9666e1e3082"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url "https://www.splasm.com/audiobookbuilder/update.html"
    regex(/class=.*["' >]Audiobook\sBuilder\s?(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :el_capitan"

  app "Audiobook Builder.app"
end
