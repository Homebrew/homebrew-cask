cask 'focus' do
  version '1.9.9'
  sha256 'f034649e7b9b761a2ef939e360f40b24e70ded6d3415ce2c26e7f82e7af2532c'

  url "https://heyfocus.com/uploads/Focus-#{version}.zip"
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
