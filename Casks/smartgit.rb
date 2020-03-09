cask 'smartgit' do
  version '19.1.7'
  sha256 '2710c9074955e875deec70d7ca40a520362ae264b1e993e83d5adb0ddfa4c2f6'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'
end
