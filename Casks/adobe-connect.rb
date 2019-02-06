cask 'adobe-connect' do
  version '10.1,2019.1.1'
  sha256 'eb8dab912146236d20bf904c1bcc036b95ecd76916322fe7efbefca1b13ff545'

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma.dots_to_underscores}/AdobeConnect_#{version.after_comma}.dmg"
  name 'Adobe Connect'
  homepage 'https://www.adobe.com/products/adobeconnect.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  installer manual: 'AdobeConnectInstaller.app'

  uninstall delete: '/Applications/Adobe Connect'
end
