cask 'cheatsheet' do
  version '1.2.2'
  sha256 '41cfec767f761e2400d5ad700c936339c8c2e80a9dfbaf44b66375e63192763c'

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  # mediaatelier.com verified as official when first introduced to the cask
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '0912c51e295fc1eea483ec13e13960092fe4161eb7a2b7b08857e69e3219b776'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
