cask 'deepgit' do
  version '4.0.1'
  sha256 'e1905388c46e1e73e27fdc260350c95923186d962ef5bdc9c59ebba155f53041'

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://syntevo.com/deepgit/download'
  name 'DeepGit'
  homepage 'https://www.syntevo.com/deepgit/'

  app 'DeepGit.app'
end
