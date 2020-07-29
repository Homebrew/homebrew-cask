cask 'deepgit' do
  version '4.0.1'
  sha256 'cabc3a8c4e8b507fa3f999052a3cc1f6f8ddb06e4cfcdeb9c1d9c2ca6c34351f'

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://syntevo.com/deepgit/download'
  name 'DeepGit'
  homepage 'https://www.syntevo.com/deepgit/'

  app 'DeepGit.app'
end
