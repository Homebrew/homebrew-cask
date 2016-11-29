cask 'focus' do
  version '1.4.20'
  sha256 'a5b5746760237cd8d5ab1c7ea5fabb42857e288d64b397304595a0c15e970010'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml',
          checkpoint: '250a501501d4e891c7ed828cf8f6f7f3aea2c8609052d0f6dd5919bb3d9892e6'
  name 'Focus'
  homepage 'https://heyfocus.com/'

  depends_on macos: '>= :mavericks'

  app 'Focus.app'

  uninstall quit: 'BradJasper.focus'

  zap delete: [
                '~/Library/Caches/BradJasper.focus/',
                '~/Library/Application Support/Focus/',
                '~/Library/Preferences/BradJasper.focus.plist',
              ]
end
