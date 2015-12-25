cask 'cheatsheet' do
  version '1.2.2'
  sha256 '41cfec767f761e2400d5ad700c936339c8c2e80a9dfbaf44b66375e63192763c'

  url "http://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'http://mediaatelier.com/CheatSheet/feed.php',
          :sha256 => 'f6349cacc2bc850b37ad4d8a0a9b4e59f1491793ac0bb6b85081a550ca40455f'
  name 'CheatSheet'
  homepage 'http://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
