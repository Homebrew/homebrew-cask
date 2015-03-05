cask :v1 => 'cheatsheet' do
  version :latest
  sha256 :no_check

  url 'http://www.cheatsheetapp.com/CheatSheet/download.php'
  appcast 'http://mediaatelier.com/CheatSheet/feed.php'
  homepage 'http://www.cheatsheetapp.com/CheatSheet/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CheatSheet.app'

  postflight do
    suppress_move_to_applications
  end
end
