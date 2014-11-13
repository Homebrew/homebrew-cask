cask :v1 => 'mcedit' do
  version '0.1.7.1'
  sha256 '9ab4e66a3d4d898921cd38725da36567931fe4b8d0285c3a73dba6bef35fbea4'

  url "https://bitbucket.org/codewarrior0/mcedit/downloads/MCEdit-#{version}.macosx-10_6-x86_64.zip"
  homepage 'http://www.mcedit.net'
  license :oss

  app 'MCEdit.app'
end
