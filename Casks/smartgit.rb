cask :v1 => 'smartgit' do
  version '6.5.2'
  sha256 '3fc0fd89e1e2b7e5aec5f12b8da2ae1da1d2a84d96ce335a62d922db1640b965'

  url "http://www.syntevo.com/download/smartgit/smartgit-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end
