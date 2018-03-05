cask 'blockstack' do
  version '0.25.0'
  sha256 '71a168ac9cf8f35b36e90e28a57eccf705155fac47541a06a17ecb390727c98b'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '468c21800f6eeee09113e70a1df3d23cc8cfc8445e4fdf9f933cec0d5da02ca4'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
