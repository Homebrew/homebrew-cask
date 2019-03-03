cask 'focus' do
  version '1.10.1'
  sha256 '8fe3f64007f14344416023ab40830c5ad636771574123895f39950b38e169606'

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
