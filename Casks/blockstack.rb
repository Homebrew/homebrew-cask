cask 'blockstack' do
  version '0.21.3'
  sha256 '8d380d877c36975873a041d6740ac5760162326be7624798ec41eda44c30b082'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '54c83ef1f8db9176b612f52d38c30e3b45ddb8296e79942e1019bd8ad8557d0b'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
