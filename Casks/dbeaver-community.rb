cask :v1 => 'dbeaver-community' do
  version '3.4.5'

  if Hardware::CPU.is_32_bit?
    sha256 'fa6271e62cd7050063d263578d9d06a70834f8c0a699f3d51d2e31b922976dc6'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '5bd5476e32ee17b78127b72ab686ad4f770f0793e9378a016f999de23c725a34'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
