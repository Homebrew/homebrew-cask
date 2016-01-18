cask 'onionshare' do
  version '0.8'
  sha256 '2344215e269795ab0943a85071350d292aebcbc996ffc84e1d2af2ad9cd5b959'

  url "https://github.com/micahflee/onionshare/releases/download/#{version}/OnionShare.pkg"
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
