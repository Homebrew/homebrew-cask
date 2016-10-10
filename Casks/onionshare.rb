cask 'onionshare' do
  version '0.9'
  sha256 '9142dcce2aa313e628432408ffcfbd9928ddd5d50b529a7701f4f9e75e6df9a4'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '388c9b60d7dd35c10ef53856d832055cf3de414387b6977ea782dcf011d67c6c'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'org.pythonmac.unspecified.OnionShare'
end
