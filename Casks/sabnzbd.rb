cask 'sabnzbd' do
  version '2.3.5'
  sha256 'bd20eb8d95d26d5affdba23df98311691a12d3f813c0e4e383252dab76ab8e1f'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap trash: '~/Library/Application Support/SABnzbd'
end
