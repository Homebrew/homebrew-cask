cask 'boxcryptor' do
  version '2.33.1015'
  sha256 'edcf64ba0be52662c555b18d98b57ff59ba88a2289ebf44e957721924608b8b5'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :sierra'

  app 'Boxcryptor.app'
end
