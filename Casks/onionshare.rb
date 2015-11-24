cask :v1 => 'onionshare' do
  version '0.7.1'
  sha256 '219051eb003e6ed36db8d39e3c6436f20ed53d4758d433e80676616a2eee968f'

  url "https://github.com/micahflee/onionshare/releases/download/#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom'
  gpg "#{url}.sig",
      :key_url => 'https://onionshare.org/signing-key.asc'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  license :gpl

  pkg 'OnionShare.pkg'

  uninstall :pkgutil => 'org.pythonmac.unspecified.OnionShare'
end
