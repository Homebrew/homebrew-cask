cask 'geburtstagschecker' do
  version '1.8.1,187'
  sha256 '53162bf046cddcec2d899a6eb3adcda951bae74de3612c2e7a67478116f0df0c'

  url 'https://earthlingsoft.net/GeburtstagsChecker/GeburtstagsChecker.zip'
  appcast 'https://earthlingsoft.net/GeburtstagsChecker/appcast.xml'
  name 'GeburtstagsChecker'
  homepage 'https://earthlingsoft.net/GeburtstagsChecker/'

  app "GeburtstagsChecker #{version.before_comma} (#{version.after_comma})/GeburtstagsChecker.app"

  zap trash: [
               '~/Library/Caches/earthlingsoft.GeburtstagsChecker',
               '~/Library/Preferences/earthlingsoft.GeburtstagsChecker.plist',
             ]
end
