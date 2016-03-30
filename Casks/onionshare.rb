cask 'onionshare' do
  version '0.8.1'
  sha256 '3f19db4d70fa8ff03963a1164af4657143a75ad996bd5315926ee0ee5f0f9484'

  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '676d6738cf56a76e852aa1b66e4ad7b6a6974c32788320b51a2935a5e9b455d7'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  license :gpl
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'org.pythonmac.unspecified.OnionShare'
end
