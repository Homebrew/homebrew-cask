cask 'smartgit' do
  version '18.2.3'
  sha256 '475b49868da987a2ba5ac49e3bebb284f108d0d20615d8d3b34ff1f005c57a93'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
