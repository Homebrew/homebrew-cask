cask :v1 => 'dbeaver-community' do
  version '3.3.2'

  if Hardware::CPU.is_32_bit?
    sha256 '540a8e571bf759d84bea1e7ed1b032c8b1994fda13b09d2c2a2e62c4acfb8af5'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '1978e7c437dca237f6a21237f271b410d65c49d4b584bf87e4423c0d0e140c2e'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
