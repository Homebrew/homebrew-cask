cask "linphone" do
  version "4.2.4"
  sha256 "505b87393ad588542e74d32b0a6267725203009b383dc2f41a1dbab0949d9db2"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast "https://www.linphone.org/releases/macosx/RELEASE"
  name "Linphone"
  homepage "https://www.linphone.org/"

  app "Linphone.app"
end
