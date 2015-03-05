cask :v1 => 'dbeaver-enterprise' do
  version '3.1.4'

  if Hardware::CPU.is_32_bit?
    sha256 '5e3c5bab9d1ee2ba811c019f8c062cdaec8930b39ae97b16fa0fe2011e997496'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '71e61e4b1f3900689de515103edfd6b743a78227ccf153bdb851be8a23b04664'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
