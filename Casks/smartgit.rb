cask 'smartgit' do
  version '19.1.0'
  sha256 '7ad4b3cd14e1bcabdb7f5c388db29dacae1582089840e54e88d97d788a1ce9b7'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp(".0")
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
