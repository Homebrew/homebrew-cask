cask 'sabnzbd' do
  version '2.0.1'
  sha256 '98c47f916caad5fe265735222b298374655a06be38e5f488a5cfb45977abc2f9'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '14f330a5e7ead9be409e09be3fd3b83a6bf4c6a7f8114ca376cf87939e9438c8'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
