cask "linphone" do
  version "5.0.6"
  sha256 "e1b323d8c1b53b145eb3d282c81cbee3a1b68db0474fda6996a2287f842eadb0"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone-(\d+(?:\.\d+)+)-mac\.dmg/i)
  end

  app "Linphone.app"
end
