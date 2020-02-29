cask 'duefocus' do
  version '2.2.0'
  sha256 'f5ddeaa4c8afd0c4cc75c4f51ea778a6ba629a92cdcb99c864e898e8575d503b'

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
