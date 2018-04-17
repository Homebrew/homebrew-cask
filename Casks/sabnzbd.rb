cask 'sabnzbd' do
  version '2.3.2'
  sha256 '335594a47b98ffc16548f72089b2bbc46e1554da60eff7b0dc60de11bd497376'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'cb78a5e44316b45fec244239d027bd8d84940450e94a0b237dba9c51823fd526'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap trash: '~/Library/Application Support/SABnzbd'
end
