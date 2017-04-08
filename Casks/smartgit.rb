cask 'smartgit' do
  version '17.0.3'
  sha256 '14460ddd755806ab6aa9ede4aa0ba8afbc7aa201834ace1be6d4279953b6035b'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: '6f2b29ae7a8e53f106c74e8bbb535498e5a64b6dc713c6c4b15247a6f26cc7e0'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
