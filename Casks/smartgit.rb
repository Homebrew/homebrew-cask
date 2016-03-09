cask 'smartgit' do
  version '7.1.1'
  sha256 '1d1e11020c5e9aa0e5701203df1126300073fbafb92f4d0029eaef8599a91d70'

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
