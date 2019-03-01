cask 'focus' do
  version '1.9.14'
  sha256 '54753c79c8cc92c1d32faf035fe3ad97e439367b60929926995834f952df9fe6'

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
