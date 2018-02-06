cask 'smartgit' do
  version '17.1.4'
  sha256 '502d4383b0c7bb35d75664314263d38edadcd7a10ee400f3e21176a575e5c505'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: 'ac063796a8db1a234286aa9e3d1bae901ca459ba9662d801af0b8d2445a45f62'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
