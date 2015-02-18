cask :v1 => 'dbeaver-community' do
  version '3.1.4'

  if Hardware::CPU.is_32_bit?
    sha256 '017ef0d2aa6236685cfdec4988e05e0926a156db3cc46c48e09f11879b62402c'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '3da3c940f3891291c7ae332ce57a116336f5227972d854afbe062ec3045395c8'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
