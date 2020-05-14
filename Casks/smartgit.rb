cask 'smartgit' do
  version '20.1.2'
  sha256 '2482b1d8eadedd51e153925f6773f2dd7ed3cbab5c1a84a6970bb9b86ad07f25'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
