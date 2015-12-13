cask :v1 => 'onionshare' do
  version '0.8'
  sha256 '2344215e269795ab0943a85071350d292aebcbc996ffc84e1d2af2ad9cd5b959'

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
