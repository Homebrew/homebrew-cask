cask 'smartgit' do
  version '7.0.4'
  sha256 '56d8b06cd42b796bfabd98486fd97a9cb34996244b5811d97510cf4a5b7b12d7'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.gsub('.', '_')}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'

  caveats do
    files_in_usr_local
  end
end
