cask :v1 => 'dbeaver-enterprise' do
  version '3.4.4'

  if Hardware::CPU.is_32_bit?
    sha256 'c3227009c1468cf3eb4f246723566612db31b5aa091c1c350d6c76a7e8763e07'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86.zip"
  else
    sha256 '8f3c741376d39c81a71cbed1ff777cf7d65fcf9961e45222b65081df19899076'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-ee-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
