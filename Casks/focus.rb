cask 'focus' do
  version '1.4.11'
  sha256 '22524abb327ce17d70ab50ffc9de4d8911fd30bf84490d14c28383c8fd8d45ed'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml',
          checkpoint: '9256c6667585c7748e52d911502d9b6d17e6ab2be4c87d84af88753a58db1e4c'
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
