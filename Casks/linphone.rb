cask "linphone" do
  version "5.0.4"
  sha256 "e2fa979ea0d00eaf5bdbdaf188e738c6d9916cd96607ba58298d90fb705a65a5"

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
