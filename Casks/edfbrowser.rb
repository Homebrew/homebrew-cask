cask 'edfbrowser' do
  version '1.76,87e7b6e7565cce3453f85e78bebfd759'
  sha256 '9cbbf181604f10628242f720732cf730a90d04244864a94dc296be1340613cc7'

  # gitlab.com/whitone/EDFbrowser/ was verified as official when first introduced to the cask
  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.after_comma}/EDFbrowser-#{version.before_comma}.dmg"
  appcast 'https://gitlab.com/whitone/EDFbrowser/-/tags?format=atom'
  name 'EDFbrowser'
  homepage 'https://www.teuniz.net/edfbrowser'

  app 'EDFbrowser.app'
end
