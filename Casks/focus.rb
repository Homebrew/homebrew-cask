cask 'focus' do
  version '1.10.3'
  sha256 'e51e1bd47e655aa51e6766d12f2916db45228d9d731ca61ebcd75698d5e772d6'

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
