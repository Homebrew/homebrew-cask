cask "linphone" do
  version "5.0.13"
  sha256 "eb9550e88949b7e3d402658f4fbb9193e9db71a38933e121cc9e816b133c2ac9"

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
