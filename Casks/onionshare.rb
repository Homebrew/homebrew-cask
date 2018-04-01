cask 'onionshare' do
  version '1.2'
  sha256 '1a9b0d5019a2b664535b4219b87caaaf676b0430b9816e86df2993bdaf9fb8ff'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom',
          checkpoint: '97ede8041dcfcf92e58aec8f4cca01ed036dcd191790bde56efaf333ca7b16f5'
  name 'OnionShare'
  homepage 'https://onionshare.org/'
  gpg "#{url}.sig", key_url: 'https://onionshare.org/signing-key.asc'

  pkg 'OnionShare.pkg'

  uninstall pkgutil: 'com.micahflee.onionshare'
end
