cask 'geburtstagschecker' do
  version '1.8,177'
  sha256 '9f86d7a04fc8de127a9f2ec5c3ca7eb4742429f007f8041464540b9c92c726af'

  # https://earthlingsoft.net/GeburtstagsChecker/ was verified as official when first introduced to the cask
  url "https://earthlingsoft.net/GeburtstagsChecker/GeburtstagsChecker%20#{version.before_comma}%20(#{version.after_comma}).zip"
  appcast 'https://earthlingsoft.net/GeburtstagsChecker/appcast.xml'
  name 'GeburtstagsChecker'
  homepage 'https://earthlingsoft.net/GeburtstagsChecker/'

  app 'GeburtstagsChecker.app'

  zap trash: [
               '~/Library/Caches/earthlingsoft.GeburtstagsChecker',
               '~/Library/Preferences/earthlingsoft.GeburtstagsChecker.plist',
             ]
end
