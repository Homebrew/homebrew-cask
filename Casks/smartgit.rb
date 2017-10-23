cask 'smartgit' do
  version '17.1.0'
  sha256 '984096381e6d84ab69a6d3c254bff736a81e094a376757c8d41e2d2e04ce189b'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: 'bcf3bda18796f8569e84913593097f3b3ff3fb2539c57151368c8ad720028517'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
