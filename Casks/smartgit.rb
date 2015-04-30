cask :v1 => 'smartgit' do
  version '6.5.5'
  sha256 '5736c91b8b05f19c54b4b89aab7f83db1516da2098ba041bd37ffe4403481872'

  url "http://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.gsub('.', '_')}.dmg"
  name 'SmartGit'
  homepage 'http://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end
