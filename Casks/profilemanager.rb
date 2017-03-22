cask 'profilemanager' do
  version '1.0'
  sha256 'a46295851063d8a0630cace6720813e571e86a66734a8765f9706bab939b3f48'

  url "https://archive.mozilla.org/pub/mozilla.org/utilities/profilemanager/#{version}/profilemanager.mac.dmg"
  appcast 'https://ftp.mozilla.org/pub/utilities/profilemanager/',
          checkpoint: '97015dfa8a452cd44159385cf47f78683349ddd0cb0058ab129069d6796fc168'
  name 'Mozilla Profile Manager'
  homepage 'https://developer.mozilla.org/en-US/docs/Mozilla/Profile_Manager'

  app 'ProfileManager.app'
end
