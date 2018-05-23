cask 'smartgit' do
  version '18.1.2'
  sha256 'ca361bf12a5a6fb4e0e3d85dd3a5bbcf246d62a5c4c5016316cdf12d91aef53c'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '73eb7838694a4d0fb3fb0f1a5a148a92cc6ef1f8b4f55228ff61d0dbef8b1b45'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
