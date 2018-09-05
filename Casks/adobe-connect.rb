cask 'adobe-connect' do
  version '9.7,982.437'
  sha256 'd310bda05cac63fca5c90e7b3dae9b09accd7460e88e76482efed2bc763e6cfc'

  url "http://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma.dots_to_underscores}/AdobeConnect_#{version.after_comma}.dmg"
  name 'Adobe Connect'
  homepage 'http://www.adobe.com/products/adobeconnect.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  installer manual: 'AdobeConnectInstaller.app'

  uninstall delete: '/Applications/Adobe Connect'
end
