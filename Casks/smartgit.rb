cask 'smartgit' do
  version '17.1.6'
  sha256 '4850c2538f083e8bafb14747ef2fa108e2e97e154fa03716faaad6e2f30c5f14'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: 'e970828c70a3818509baa9cf8879f689f6eefce74fb8e891bcfc1a5608ad521a'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
