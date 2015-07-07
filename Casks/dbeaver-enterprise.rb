cask :v1 => 'dbeaver-enterprise' do
  version '3.4.2'

  if Hardware::CPU.is_32_bit?
    sha256 '2f5db0d7341ae96ccda9d0307c3609fe294effcbd4ac97202f13237c3715a8e4'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '3bf71701d6a75d15044df61d3274fe0603334559031ec2614b7492e694bf7c6c'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
