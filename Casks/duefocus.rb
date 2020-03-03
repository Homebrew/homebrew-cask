cask 'duefocus' do
  version '2.3.0'
  sha256 'a30330d89cace86f228c18c04b7087c655a7e99ddde0ee78a19390af8ff54090'

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
