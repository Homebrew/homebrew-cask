cask :v1 => 'dbeaver-enterprise' do
  version '3.2.0'

  if Hardware::CPU.is_32_bit?
    sha256 'c090a03f84589f94ebd90d6ea6981359325ace75a9e25aae569456642a2142dc'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'ebf8fd5bb5eb1bc0e21cf5d2c93d956d3c171164f98767d1dda89c0ac8716093'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
