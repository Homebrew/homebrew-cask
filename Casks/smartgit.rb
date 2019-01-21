cask 'smartgit' do
  version '18.2.4'
  sha256 '4575ed5ba3002b13a702c2a3e7411d80f4a59dc0174890ab4746ae3f1b533a88'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
