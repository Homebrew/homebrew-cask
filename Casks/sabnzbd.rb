cask 'sabnzbd' do
  version '2.1.0'
  sha256 'f86f532f1bca5cd34fca5f3c44a00b95101e2c0f018198c0e9c8f8a23ebfdfa4'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'fff864fbd45b3e6d563cb446e727823e4b628c1b2b057a9c79da6eff1679ee84'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
