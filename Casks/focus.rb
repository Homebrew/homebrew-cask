cask 'focus' do
  version '1.8.11'
  sha256 '8307fb4c1a38d137ee64366a6edb0262fac2d04833ce5fe0889fa436f75196c3'

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
