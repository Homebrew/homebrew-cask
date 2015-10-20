cask :v1 => 'cheatsheet' do
  version '1.2.2'
  sha256 '41cfec767f761e2400d5ad700c936339c8c2e80a9dfbaf44b66375e63192763c'

  url "http://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'http://mediaatelier.com/CheatSheet/feed.php'
  name 'CheatSheet'
  homepage 'http://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
