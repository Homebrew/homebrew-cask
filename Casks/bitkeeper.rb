cask 'bitkeeper' do
  version '7.3.2'
  sha256 '2e2ec30061627e325f156340ef75e58d900bd4604a799669bb72bc98553a9982'

  url "https://www.bitkeeper.org/downloads/#{version}/bk-#{version}-x86_64-macosx.pkg"
  appcast 'https://www.bitkeeper.org/download.html'
  name 'BitKeeper'
  homepage 'https://www.bitkeeper.org/'

  pkg "bk-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: 'com.bitkeeper.bk'
end
