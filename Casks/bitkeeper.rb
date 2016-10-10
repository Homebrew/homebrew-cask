cask 'bitkeeper' do
  version '7.2.1ce'
  sha256 'ddc161d433ec963f35aca3619211bd3d0a02629ce697b02c954a6a002453a7d6'

  url "https://www.bitkeeper.org/downloads/#{version}/bk-#{version}-x86_64-macosx.pkg"
  name 'BitKeeper'
  homepage 'https://www.bitkeeper.org'

  pkg "bk-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: 'com.bitkeeper.bk'
end
