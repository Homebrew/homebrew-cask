cask 'sabnzbd' do
  version '2.2.0'
  sha256 '5d40b6ec7f76be72c9bee7a154bc5768b43aa727995a9eba462ed770baadc28d'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'ea551c8babfdd23b3d004a24d04a9c46a489df9a1ad99621664a756971c54771'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
