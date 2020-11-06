cask "linphone" do
  version "4.2.3"
  sha256 "0e6d219262062d87fdceafcc085a339682c07c1e2cf3f4747148ad4fd57ca39e"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast "https://www.linphone.org/releases/macosx/RELEASE"
  name "Linphone"
  homepage "https://www.linphone.org/"

  app "Linphone.app"
end
