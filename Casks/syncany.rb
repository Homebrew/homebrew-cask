cask 'syncany' do
  version '0.4.9-alpha'
  sha256 '7d2f8a5d504833c2c5054ecdb929de896a89627ccdd69fd21eaccd35444bca5a'

  url "https://get.syncany.org/dist/releases/syncany-#{version}-x86_64.app.zip"
  name 'Syncany'
  homepage 'https://www.syncany.org/'

  app 'Syncany.app'

  zap trash: '~/.config/syncany'
end
