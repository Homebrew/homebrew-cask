cask 'smartgit' do
  version '18.1.0'
  sha256 'e22320f046ca9dc85fcc07ff580748e2cfc9a58d4266652b82b999e7c81a41ac'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: 'f362b7a8f7f10ddcb210314c10d43698ed88ae98b422f05d073320d6c584e6af'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
