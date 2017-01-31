cask 'smartgit' do
  version '17.0.1'
  sha256 '1eb0af3d6617c5f1f33b69f783decf833fde33f2c727217a8346bac8d17958f4'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '02fe2bcdfbc8522324949e1f7dd44f90102639622c04108855ba8bc35758f01c'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
