cask :v1 => 'dbeaver-enterprise' do
  version '3.4.0'

  if Hardware::CPU.is_32_bit?
    sha256 'c3b3d31c0b00b5a0f6f301f61c3b5838dca9d8d9d999cfe7f1deee91c9019d35'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '8e3208bf8f1e40bc37c280020a9cc7dd793f0c033bd924ef64864d53f6f4cc18'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
