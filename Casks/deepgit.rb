cask 'deepgit' do
  version '3.2'
  sha256 '78ab8636ba1415053e8399538950d57ad82a8adb1508056ca96b8130370fdf9d'

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast 'https://syntevo.com/deepgit/download'
  name 'DeepGit'
  homepage 'https://www.syntevo.com/deepgit/'

  app 'DeepGit.app'
end
