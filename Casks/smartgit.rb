cask 'smartgit' do
  version '17.0.5'
  sha256 '833b368e293d453bf2e8310538c04a2e8a0b74dbaa0c93ebf22333c4b41b83e9'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '95de5bf73b4a15854ee29e7d6edce1010a3538d007c875e8dbf7937be13cc215'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
