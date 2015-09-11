cask :v1 => 'smartgit' do
  version '7.0.0'
  sha256 '21cf4da86c4c58a4147af51e189a12f0c4215477e6410c87c80306684036f783'

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
