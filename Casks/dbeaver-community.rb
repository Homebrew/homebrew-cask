cask :v1 => 'dbeaver-community' do
  version '3.1.1'

  if Hardware::CPU.is_64_bit?
    sha256 '77eff21ec2b49cf7473aa1fff3b7ccf99ddf93c48470414376f002263f324ef7'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  else
    sha256 '0e1eef7f80d880a895fdd8bc205edfa3c82b2d4165de25cfd5c6bd8292682707'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
