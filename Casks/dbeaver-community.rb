cask :v1 => 'dbeaver-community' do
  version '3.3.0'

  if Hardware::CPU.is_32_bit?
    sha256 'd91acbac3dc2c86d20f3562f2b7ef5e5a87229a9f32f7bc8f4542d135c5eb31e'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 'c8dbf2f6f86c64ea4e2812336ef0f4d35af6659ece26a2afdcb4de95d6d991cd'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
