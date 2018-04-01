cask 'bitkeeper' do
  version '7.3.2'
  sha256 '2e2ec30061627e325f156340ef75e58d900bd4604a799669bb72bc98553a9982'

  url "http://www.bitkeeper.org/downloads/#{version}/bk-#{version}-x86_64-macosx.pkg"
  appcast 'http://www.bitkeeper.org/download.html',
          checkpoint: '0b79344fd9171b203e32754c1b6e3bc7937c19231371d4b2bbc5682ce94c0bef'
  name 'BitKeeper'
  homepage 'http://www.bitkeeper.org/'

  pkg "bk-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: 'com.bitkeeper.bk'
end
