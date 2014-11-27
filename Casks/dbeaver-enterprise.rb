cask :v1 => 'dbeaver-enterprise' do
  version '3.0.2'

  if Hardware::CPU.is_32_bit?
    sha256 '8943411eff3074ff7f986fa2f9db4ab185519c4ba20abef67f8fa18d9e270e5b'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '7751a5a97de1f78735eaba3d69486cc39b8bddb1f4b2fb81173d111a6ee2b8c8'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
