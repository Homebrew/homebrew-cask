cask "linphone" do
  version "4.2.5"
  sha256 "9e68a923818b24045fc36fe94a0edeaff094baf815ad598dd103eb815661cd0e"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast "https://www.linphone.org/releases/macosx/RELEASE"
  name "Linphone"
  homepage "https://www.linphone.org/"

  app "Linphone.app"
end
