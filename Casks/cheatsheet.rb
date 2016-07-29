cask 'cheatsheet' do
  version '1.2.5'
  sha256 '6bb6340f5e204d581d9516861504fd4e3a036a6e94b1c9a5a76127121a1f70ae'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '76bebd775e105d108f5f786017fe6c4f6e4fa7b5a73314304adb138b42508374'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
