cask "linphone" do
  version "4.2.4"
  sha256 "8b4bc64b6986e9c435b5f3f3256ebfdb3496a15bbec3eac60da8842801af69ef"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  appcast "https://www.linphone.org/releases/macosx/RELEASE"
  name "Linphone"
  homepage "https://www.linphone.org/"

  app "Linphone.app"
end
