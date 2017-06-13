cask 'sabnzbd' do
  version '2.1.0'
  sha256 'f86f532f1bca5cd34fca5f3c44a00b95101e2c0f018198c0e9c8f8a23ebfdfa4'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '8a52017d7f82de2147265f899b65e96dea9fda7b0d179197288b3e9fe9075c70'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
