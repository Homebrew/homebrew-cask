cask 'duefocus' do
  version '2.4.6'
  sha256 'aca41b8d798e207c9a579bda6670aaca9db5248bc24038947ff806d2cd9c59b9'

  url "https://web.duefocus.com/distribution/darwin/v3/DueFocus-#{version}-mac.zip"
  appcast 'https://web.duefocus.com/distribution/darwin/v3/appcast.html'
  name 'DueFocus'
  homepage 'https://duefocus.com/'

  app 'DueFocus.app'

  zap trash: [
               '~/Library/Application Support/DueFocus',
               '~/Library/Preferences/com.qarea.duefocus.plist',
               '~/Library/Logs/DueFocus',
             ]
end
