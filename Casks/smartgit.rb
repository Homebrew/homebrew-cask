cask 'smartgit' do
  version '17.1.5'
  sha256 '208a62cecb9cb27624d092a57d80a48ba77349fb83c805288876024afb9255c6'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://www.syntevo.com/smartgit/changelog.txt',
          checkpoint: 'bd8c7bbdff5c9fc310c6a287d537333294c25a69887918c0ffd0994ea53b19fa'
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"
end
