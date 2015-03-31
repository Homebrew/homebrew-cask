cask :v1 => 'dbeaver-enterprise' do
  version '3.3.0'

  if Hardware::CPU.is_32_bit?
    sha256 '355171432176ff7c34ea087bca1884ad93415a61c7506618cac9831cce6a81c4'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 'd332ff41a2fb8ed492fcfd24b1cba773719746794cd314513a93209f8e9e0966'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
