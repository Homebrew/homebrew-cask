cask 'smartgit' do
  version '18.1.1'
  sha256 '7c239f7a0613a0217ebb3ae40a455216d3c66fab7215ce9e0b3339432572ab7e'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '5e33872d783924298d38bee7d6d4c0fc23cbdc67b0d54178bd9e72c58e4f2c5c'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
