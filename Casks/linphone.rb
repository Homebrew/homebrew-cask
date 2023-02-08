cask "linphone" do
  version "5.0.10"
  sha256 "ac85eb024954c40bb430a9da9eee7658f3b33fa1c9e171120bd5b072d161c7aa"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "Linphone.app"
end
