cask 'focus' do
  version '1.4.11'
  sha256 '22524abb327ce17d70ab50ffc9de4d8911fd30bf84490d14c28383c8fd8d45ed'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml',
          checkpoint: '250a501501d4e891c7ed828cf8f6f7f3aea2c8609052d0f6dd5919bb3d9892e6'
  name 'Focus'
  homepage 'https://heyfocus.com/'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Focus.app'

  uninstall quit: 'BradJasper.focus'

  zap delete: [
                '~/Library/Caches/BradJasper.focus/',
                '~/Library/Application Support/Focus/',
                '~/Library/Preferences/BradJasper.focus.plist',
              ]
end
