cask :v1 => 'dbeaver-community' do
  version '3.0.1'

  if Hardware::CPU.is_32_bit?
    sha256 'a67aa26d6d828633789079ca30fa0e3203d54e2c6b41a88318c24920809c3a5b'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 '0e2e7e403c8c0c5f6b2291e8a2bdfba5730dffa9a2fb363c1c98e60e868412d7'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :unknown

  app 'dbeaver/dbeaver.app'
end
