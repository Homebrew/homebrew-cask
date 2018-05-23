cask 'eul' do
  version '0.35'
  sha256 '96cc9f370a3aaa928a7390292bf3f8df78176cda1fb50952d2e2e33c7710756d'

  # github.com/eul-im/eul was verified as official when first introduced to the cask
  url "https://github.com/eul-im/eul/releases/download/v#{version}/eul_mac.zip"
  appcast 'https://github.com/eul-im/eul/releases.atom',
          checkpoint: 'dc2dbd45e9cb718fc71f4948e858163acb35baca030739b123a1ecea5cbb8211'
  name 'eul'
  homepage 'https://eul.im/'

  app 'eul.app'
end
