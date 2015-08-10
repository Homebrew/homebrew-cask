cask :v1 => 'dbeaver-community' do
  version '3.4.4'

  if Hardware::CPU.is_32_bit?
    sha256 '787b6a4911e794e6dfd33593c586058b22f25e18999f8406be70dad20266a7d1'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '2e5ab23f650b779c4a08b733e4f110ddf7bf20abec7bfb012c2a6517f829ebc3'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end
