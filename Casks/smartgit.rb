cask 'smartgit' do
  version '19.1.3'
  sha256 'ebbd7a476f9893ff9983e83d7e741ac483f13c8a9673c1b55274ed7c0d6fce72'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
