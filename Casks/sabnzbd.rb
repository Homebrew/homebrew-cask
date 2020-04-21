cask 'sabnzbd' do
  version '2.3.9'
  sha256 'dfe5eee0f94b1db79ecbe759ce9c38cec7d9b4357fd58258628e01f46d3ca3ea'

  # github.com/sabnzbd/sabnzbd/ was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap trash: '~/Library/Application Support/SABnzbd'
end
