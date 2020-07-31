cask "linphone" do
  version "4.2.2"
  sha256 "8e02953ba76bfbaf81f4cbdf3cce869ecb6a0dea3b18f4bf91962bee943fcc28"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast "https://www.linphone.org/releases/macosx/RELEASE"
  name "Linphone"
  homepage "https://www.linphone.org/"

  app "Linphone.app"
end
