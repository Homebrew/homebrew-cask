cask 'smartgit' do
  version '20.1.2'
  sha256 '90e0e63489e5f38f8d03fd815d67d53142f5f94bf80875406f506b0e813d4282'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
