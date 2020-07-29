cask 'codespace' do
  version '1.2.3'
  sha256 'a6cce41cb3497bf455a867aba9d7a27cdf76f3999fa92409713701707dafab39'

  url 'https://codespace.app/download/latest'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://codespace.app/download/latest&user_agent=Mac%20OS%20X'
  name 'Codespace'
  homepage 'https://codespace.app/'

  depends_on macos: '>= :el_capitan'

  app 'Codespace.app'
end
