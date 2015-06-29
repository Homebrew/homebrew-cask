cask :v1 => 'smartgit' do
  version '6.5.7'
  sha256 'c56e43e25785384906111a724acdf353b1cfecbc9bc7f8d0f5b5020e95662a67'

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
