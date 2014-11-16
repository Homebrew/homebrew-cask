cask :v1 => 'smartgit' do
  version '6.5.0'
  sha256 '0168005ba8c26ddc3e31022b1419cfba1846246e64e82d949861933ecae37c40'

  url "http://www.syntevo.com/download/smartgit/smartgit-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end
