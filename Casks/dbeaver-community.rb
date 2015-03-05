cask :v1 => 'dbeaver-community' do
  version '3.1.5'

  if Hardware::CPU.is_32_bit?
    sha256 '9d169d51f5849850eb13d879f2ee0247d026d35bb16d8acbf207b5a502cc3a33'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 'a4cb01e15061d5561a98d3b74b30272d4c29a845c0df623819cc8a548c313bf5'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
