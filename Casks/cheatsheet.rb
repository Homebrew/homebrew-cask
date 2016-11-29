cask 'cheatsheet' do
  version '1.2.6'
  sha256 'cb4008869ea0dcb569a7c310c73a0bfe2192a7eb566f41b13c771a22adaea78c'

  # mediaatelier.com/CheatSheet was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: 'fa0b4ea2a2da30024eee3071e6cfcd4ebbf2fac502c2f7fe5f07e5039256b22c'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
