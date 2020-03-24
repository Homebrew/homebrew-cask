cask 'deepgit' do
  version '4'
  sha256 '20b9d7e46c693188d5faade3ca42831e75f6654ed7fe7a0880b62aebc67012e6'

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://syntevo.com/deepgit/download'
  name 'DeepGit'
  homepage 'https://www.syntevo.com/deepgit/'

  app 'DeepGit.app'
end
