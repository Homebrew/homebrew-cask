cask 'onionshare' do
  version '0.8.1'
  sha256 '3f19db4d70fa8ff03963a1164af4657143a75ad996bd5315926ee0ee5f0f9484'

  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  license :gpl
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'org.pythonmac.unspecified.OnionShare'
end
