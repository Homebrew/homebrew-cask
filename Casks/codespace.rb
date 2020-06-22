cask 'codespace' do
  version '1.2.2'
  sha256 'ff10a58e2468350d2f9d4a7cca002f06dafe18471d98f6a7729e5557026a55a3'

  url 'https://codespace.app/download/latest'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest&user_agent=Mac%20OS%20X'
  name 'Codespace'
  homepage 'https://codespace.app/'

  depends_on macos: '>= :el_capitan'

  app 'Codespace.app'
end
