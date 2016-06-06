cask 'cheatsheet' do
  version '1.2.4'
  sha256 '8b39b9556775b9f132b7e0776dc264caec8d698be59d25f6b62e7f8931a3b4df'

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '4d9bf1c2c5f2601d8a26213baebc46ac1173a9129f53cddbfcdcae3b820820c9'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
