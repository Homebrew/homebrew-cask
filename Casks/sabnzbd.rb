cask 'sabnzbd' do
  version '2.2.1'
  sha256 'da52226a42f228f28f09b119894296eb9d7459ce8f39339f76e3d1b6f6cd7327'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '5c20b8e404f133f56fb1c83116e7951828b3ce080e5198c12856677e60bb1533'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
