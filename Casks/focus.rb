cask 'focus' do
  version '1.7.11'
  sha256 'f833857e9df583d1ab5910b885f7a305d1c2014b7fd23d2d61c6d06b4ecb7f79'

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
