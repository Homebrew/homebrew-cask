cask 'boxcryptor' do
  version '2.30.1004'
  sha256 'cccea52e3ac7c1e4957dc0136c4564d224005bd39bfeaf46f6774b541603e4e6'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :sierra'

  app 'Boxcryptor.app'
end
