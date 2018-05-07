cask 'onionshare' do
  version '1.3'
  sha256 '262d0653945a06737502fb78bf2a159dbfdc93de6ff020c9ff2252db5d1ecd25'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare-#{version}.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: 'b55b8645a8d5ebf916ff4d753d84ae152a59990ec0a16cee9e49aa983435b862'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig", key_url: 'https://onionshare.org/signing-key.asc'

  pkg "OnionShare-#{version}.pkg"

  uninstall pkgutil: 'com.micahflee.onionshare'
end
