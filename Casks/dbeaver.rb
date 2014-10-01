class Dbeaver < Cask
  version '3.0.1'
  sha256 '0e2e7e403c8c0c5f6b2291e8a2bdfba5730dffa9a2fb363c1c98e60e868412d7'

  url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  homepage 'http://dbeaver.jkiss.org/'
  license :unknown

  app 'dbeaver/dbeaver.app'
end
