cask 'smartgit' do
  version '20.1.1'
  sha256 'a62a4fcc053c2ab4eba2ab8d9f76b436d968ef6c4243ae2460ed9749eaf29726'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          configuration: version.chomp('.0')
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
