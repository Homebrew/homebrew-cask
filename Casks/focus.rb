cask 'focus' do
  version '1.10.2'
  sha256 '839f2adafb9c02f71a7565718b08ead9c82e41a9406ea51778e3c0c2bac49192'

  url "https://heyfocus.com/uploads/Focus-#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://heyfocus.com/focus.zip'
  name 'Focus'
  homepage 'https://heyfocus.com/'

  app 'Focus.app'

  uninstall quit: 'BradJasper.focus'

  zap trash: [
               '~/Library/Caches/BradJasper.focus/',
               '~/Library/Application Support/Focus/',
               '~/Library/Preferences/BradJasper.focus.plist',
             ]
end
