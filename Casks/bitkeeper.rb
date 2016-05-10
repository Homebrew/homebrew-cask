cask 'bitkeeper' do
  version '7.2'
  sha256 'abfc186e70932a7d5d8e26706f19a399b31a662a8c3797250f36460385ddcd1e'

  url "https://www.bitkeeper.org/downloads/latest/bk-#{version}ce-x86_64-macosx.pkg"
  name 'BitKeeper'
  homepage 'https://www.bitkeeper.org'
  license :apache

  pkg "bk-#{version}ce-x86_64-macosx.pkg"

  uninstall pkgutil: 'com.bitkeeper.bk'
end
