cask 'sabnzbd' do
  version '2.0.0'
  sha256 '24cd703b66621df85acce4971f5650fee41550d93e16314f2663c2ab67105b1d'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '4e2c62c55b3e07e31c38e79799c05654866165486efe4db318972b1e01ae5051'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
