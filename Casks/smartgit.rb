cask :v1 => 'smartgit' do
  version '7.0.3'
  sha256 '4e0cff341fec1d5a943d8755e62f492924dc3e37462dc3bf10d0a24bec4d035f'

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
