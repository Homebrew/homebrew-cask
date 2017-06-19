cask 'sabnzbd' do
  version '2.1.0'
  sha256 'f86f532f1bca5cd34fca5f3c44a00b95101e2c0f018198c0e9c8f8a23ebfdfa4'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '7aca883e825a3a87efcb6fd85213fd37dc1ca9de2caf366cff8de36b30e4219d'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
