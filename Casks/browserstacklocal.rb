cask 'browserstacklocal' do
  version :latest
  sha256 :no_check

  url 'https://www.browserstack.com/BrowserStackLocal.dmg'
  name 'BrowserStack Local'
  homepage 'https://www.browserstack.com/'

  app 'BrowserStackLocal.app'
  binary 'BrowserStackLocal.app/Contents/Resources/public/BrowserStackLocal'

  uninstall launchctl: 'com.browserstack.local'

  zap trash: [
               '/tmp/BrowserStackLocal.dmg',
               '/tmp/bstack-local-app.log',
               '~/.bstack',
               '~/Library/Caches/com.browserstack.Local',
             ]
end
