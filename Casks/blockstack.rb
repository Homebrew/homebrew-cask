cask 'blockstack' do
  version '0.23.0'
  sha256 '9e2a465976796223bcdb0c306e3460412fe3ac48e5064b473f4c2db2ef8cd7a0'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '529039990d1567e5aa3232b8608f07be2fa708ab7e473acb06bb067b05fa3f69'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
