cask "linphone" do
  version "5.0.3"
  sha256 "3d0b5050d194b5c84faf4edd61bf4af379b4acb8b2a58448037c0238a810ed29"

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
