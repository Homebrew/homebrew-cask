cask 'smartgit' do
  version '17.0.2'
  sha256 '85386cf20ed3bfa22a13e878086b1d074311d53f7bb60ff2efcd1e96f30211ea'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: 'cb9c326df8fb7c6111ba6b9d2241fe744ce182518e90ce8b3c808039f14fa18a'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
