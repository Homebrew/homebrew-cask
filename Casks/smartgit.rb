cask 'smartgit' do
  version '7.1.3'
  sha256 'f885ba36e6ac9a5e0ab649448c29fc5aa1519c5bcbfcc11dae29a63b0efb6618'

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
