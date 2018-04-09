cask 'onionshare' do
  version '1.3'
  sha256 '262d0653945a06737502fb78bf2a159dbfdc93de6ff020c9ff2252db5d1ecd25'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare-#{version}.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: 'f230e50bf649344715d0b53668f059566f16cfe487deb61dddbd0583477f9952'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig", key_url: 'https://onionshare.org/signing-key.asc'

  pkg "OnionShare-#{version}.pkg"

  uninstall pkgutil: 'com.micahflee.onionshare'
end
