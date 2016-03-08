cask 'cheatsheet' do
  version '1.2.3'
  sha256 'cd89c3e247c93bc4574d5527a55464a8bac15af7f0be466c756684601ab5a2f9'

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  appcast 'https://mediaatelier.com/CheatSheet/feed.php',
          checkpoint: '18270e7f33e3c4d49637eae97a805ebb1beabe28b027bd83a3731b687b2acf80'
  name 'CheatSheet'
  homepage 'https://www.cheatsheetapp.com/CheatSheet/'
  license :gratis

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
