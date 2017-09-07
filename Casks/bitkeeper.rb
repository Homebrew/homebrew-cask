cask 'bitkeeper' do
  version '7.3.1ce'
  sha256 '25607370fbf3312e5f19785c438fb1db1b62f38eeb4ec1707acbe8bd85a21163'

  url "http://www.bitkeeper.org/downloads/#{version}/bk-#{version}-x86_64-macosx.pkg"
  appcast 'http://www.bitkeeper.org/download.html',
          checkpoint: '012486fc8f110b56139f497338253996bf6629c2f47c80d8b2a88ede9fc404ee'
  name 'BitKeeper'
  homepage 'http://www.bitkeeper.org/'

  pkg "bk-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: 'com.bitkeeper.bk'
end
