cask 'codespace' do
  version '1.1.2'
  sha256 '34a25da2b6034571a93ae278e41ccb4a94e6cf1c523567a4ba61dbba1e9ff001'

  url 'https://codespace.app/download/latest'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest'
  name 'Codespace'
  homepage 'https://codespace.app/'

  depends_on macos: '>= :el_capitan'

  app 'Codespace.app'
end
