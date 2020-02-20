cask 'smartgit' do
  version '19.1.6'
  sha256 '32a5601059578313ab04792fa97e408f4fc2f1cd3ddd63e3af893297ecb09bd8'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
