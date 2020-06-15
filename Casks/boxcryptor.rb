cask 'boxcryptor' do
  version '2.34.1023'
  sha256 'c40db48d5aa5e3bf39e1bfc9171633c70adce95c499b3f85bde76bc7f0dc57bf'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :sierra'

  app 'Boxcryptor.app'
end
