cask 'boxcryptor' do
  version '2.32.1010'
  sha256 'da6256dffe5c5015bb1986326d30c6a9231dfdb65ec89c4b7ed799dcc0950619'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :sierra'

  app 'Boxcryptor.app'
end
