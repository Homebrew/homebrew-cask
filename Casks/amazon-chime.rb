cask 'amazon-chime' do
  version '4.5.5813'
  sha256 '3842fe80504b6ceab7ca0fd09ccd2b3d2ebe48b2b8f40f3a2da4f33dcc335884'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '0e5d64c7e12eaa5b32a27fdd7a528bd6ad7613dd454a476854017a2a44fe3747'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
