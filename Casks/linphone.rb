cask "linphone" do
  version "4.4.3"
  sha256 "131c1293efa29fa15a04e3f3c7586f77d37a5edc4a392677fba4210b8ccc6926"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://www.linphone.org/releases/macosx/RELEASE"
    regex(%r{/Linphone-(\d+(?:\.\d+)+)-mac\.dmg}i)
  end

  app "Linphone.app"
end
