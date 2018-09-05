cask 'focus' do
  version '1.8.9'
  sha256 'f754bb633c9c9616118e9aa40fd69dbc4e0eb9ff304671b02eb04f748d3c1988'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  name 'Focus'
  homepage 'https://heyfocus.com/'

  depends_on macos: '>= :mavericks'

  app 'Focus.app'

  uninstall quit: 'BradJasper.focus'

  zap trash: [
               '~/Library/Caches/BradJasper.focus/',
               '~/Library/Application Support/Focus/',
               '~/Library/Preferences/BradJasper.focus.plist',
             ]
end
