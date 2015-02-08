cask :v1 => 'dbeaver-enterprise' do
  version '3.1.2'

  if Hardware::CPU.is_32_bit?
    sha256 '69e3fbb77f6dfa4039f2535451849ae3811e0430764bd507ecc5df3cd7eb28ba'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'f868445eecae115245b5d0882917e548c1a799c3ea8e6e47c551557d62a857ff'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
