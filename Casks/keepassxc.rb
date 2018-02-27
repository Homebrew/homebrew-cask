cask 'keepassxc' do
  version '2.3.0'
  sha256 '2998d94d7bccdff9490c582a58fda6b63ae208b3ddd1f0f65257a694de6fb094'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: 'fb8fad28545b2ba1c20079ce3c7624d12e0aa520288971393bad60b0bf973c44'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
