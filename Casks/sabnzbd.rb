cask 'sabnzbd' do
  version '1.2.1'
  sha256 '41bc37d0d6c4ce7f8123bcf98a2f65bf5fb036f778a8f6b8f7f8fd37f9546c78'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'e76f2bee5757f3c82e93c931029e7fe0e4d3f417eddbc112fd06362fb47153f7'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
