cask 'focus' do
  version '1.8.6'
  sha256 '58e212e2158ef9d26d432d7fb829265e21b32ef6bf743cd85de3d69e186c213b'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml',
          checkpoint: '250a501501d4e891c7ed828cf8f6f7f3aea2c8609052d0f6dd5919bb3d9892e6'
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
