cask 'bitkeeper' do
  version '7.3.1ce'
  sha256 '25607370fbf3312e5f19785c438fb1db1b62f38eeb4ec1707acbe8bd85a21163'

  url "https://www.bitkeeper.org/downloads/#{version}/bk-#{version}-x86_64-macosx.pkg"
  appcast 'https://www.bitkeeper.org/download.html',
          checkpoint: '3ec320168eb53f3f1317b7ef2f9fefdf3633b40d18022c554b228eb1db50d8a8'
  name 'BitKeeper'
  homepage 'https://www.bitkeeper.org/'

  pkg "bk-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: 'com.bitkeeper.bk'
end
