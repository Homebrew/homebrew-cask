cask 'smartgit' do
  version '7.1.0'
  sha256 '30828816e15c36fca55e767d36760395be8bb811b7ad680f61001ad96ff20646'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'

  caveats do
    files_in_usr_local
  end
end
