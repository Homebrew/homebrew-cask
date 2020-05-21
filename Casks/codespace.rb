cask 'codespace' do
  version '1.2.0'
  sha256 '1f87f8f778870c975110393fa2eea496b06d6f9d6f07915946d801e06f755c51'

  url 'https://codespace.app/download/latest'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest&user_agent=Mac%20OS%20X'
  name 'Codespace'
  homepage 'https://codespace.app/'

  depends_on macos: '>= :el_capitan'

  app 'Codespace.app'
end
