cask 'sabnzbd' do
  version '2.0.1'
  sha256 '98c47f916caad5fe265735222b298374655a06be38e5f488a5cfb45977abc2f9'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '93497fe19902aeb39e16524adbdbae0ea9ecef4144cc320a2c470bd1a187a25a'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
