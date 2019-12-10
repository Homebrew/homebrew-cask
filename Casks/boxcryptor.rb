cask 'boxcryptor' do
  version '2.31.1006'
  sha256 'fd08f59a8bd00f2be167d22493a7f53556b67ad281ed3d4281aa461a608abb77'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :sierra'

  app 'Boxcryptor.app'
end
