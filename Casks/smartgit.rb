cask :v1 => 'smartgit' do
  version '6.5.1'
  sha256 '7e0ea9807cc68880daae408789d1ed219fe8faa9acb13a7e5557356025d75be9'

  url "http://www.syntevo.com/download/smartgit/smartgit-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown    # todo: improve this machine-generated value

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end
