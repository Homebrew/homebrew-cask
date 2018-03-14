cask 'focus' do
  version '1.8.7'
  sha256 'd9f4db081e42811eea38b6463bffb69b9b2c2afe09bf5ae03e398ac783e1c65b'

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
