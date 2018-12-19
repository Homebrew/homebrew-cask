cask 'adobe-connect' do
  version '9.7,985.57'
  sha256 '335dcd17ce2646295d5c878c81d125e382587c6b3204ed933840886a45172621'

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma.dots_to_underscores}/AdobeConnect_#{version.after_comma}.dmg"
  name 'Adobe Connect'
  homepage 'https://www.adobe.com/products/adobeconnect.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  installer manual: 'AdobeConnectInstaller.app'

  uninstall delete: '/Applications/Adobe Connect'
end
