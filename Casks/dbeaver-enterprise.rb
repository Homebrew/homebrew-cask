cask :v1 => 'dbeaver-enterprise' do
  version '3.3.1'

  if Hardware::CPU.is_32_bit?
    sha256 'b5299c1afa1ef1d722ef6b99ec4f1f6f37db4cc491a008fefeae6c5592bd8efc'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'f388ec71945298ca007ca2206089be1878c0f4d9af6ddeeff6980c6fb09896e4'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
