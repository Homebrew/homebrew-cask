cask :v1 => 'dbeaver-community' do
  version '3.3.1'

  if Hardware::CPU.is_32_bit?
    sha256 '0ad6a3a7011415cfb990b6027bf62b93b334a12dff9740ebc03993c9e235f332'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 'f4aaf0314ff4fd1f9084f7d634566c82aac37f208161fe4d4f6f670745f3c1f7'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
