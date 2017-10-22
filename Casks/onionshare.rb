cask 'onionshare' do
  version '1.1'
  sha256 'a9a377590a09c98e821b15c20f9ddd34a13c83b4d8a85e966a0ec4adc31bca52'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '278463a88f6461ee37dcd0c66304a1212adf7243da9bbcaf38cda972cca82eb9'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig",
      key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'com.micahflee.onionshare'
end
