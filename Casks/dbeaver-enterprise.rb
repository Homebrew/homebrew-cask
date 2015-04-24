cask :v1 => 'dbeaver-enterprise' do
  version '3.3.2'

  if Hardware::CPU.is_32_bit?
    sha256 '0abf2adce6230d18c414f2f13722a43ca8ad74701a8e92803e4c47c149f704d5'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'd8680032d7b6f41a65d6a39a2c218d1952e14e49122120d710d30ba96d341d00'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
