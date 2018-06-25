cask 'smartgit' do
  version '18.1.3'
  sha256 'c80a8197349b4a47705a3f570f2c5bb10c3069ce760b1c248917fb9ed48e0380'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
