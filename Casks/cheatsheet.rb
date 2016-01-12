cask 'cheatsheet' do
  version '1.2.2'
  sha256 '41cfec767f761e2400d5ad700c936339c8c2e80a9dfbaf44b66375e63192763c'

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          :sha256 => 'b415baf36957cc525f95799469702ddcaf826cf348ee849a69ec1c02b0e07111'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
