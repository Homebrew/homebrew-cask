cask 'smartgit' do
  version '19.1.4'
  sha256 '73dddea96464cbb8a7b03c19207c5f5ae45376b19e039ca94cd71a1ac0de57a9'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'
end
