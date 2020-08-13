cask "profilemanager" do
  version "1.0"
  sha256 "a46295851063d8a0630cace6720813e571e86a66734a8765f9706bab939b3f48"

  url "https://archive.mozilla.org/pub/mozilla.org/utilities/profilemanager/#{version}/profilemanager.mac.dmg"
  appcast "https://ftp.mozilla.org/pub/utilities/profilemanager/"
  name "Mozilla Profile Manager"
  homepage "https://developer.mozilla.org/en-US/docs/Mozilla/Profile_Manager"

  app "ProfileManager.app"
end
