cask 'duefocus' do
  version '2.1.1'
  sha256 '6835adc3e0fa6f69901c7e7b4fc39ce39e079d4f6c2608d3e7d0bc66e7f8697d'

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
