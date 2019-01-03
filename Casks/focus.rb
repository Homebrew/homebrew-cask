cask 'focus' do
  version '1.8.14'
  sha256 'd9e03e5e4f57f51c03fe54bb60de4ded36aaffb05067930230127c286ef8fa64'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml'
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
