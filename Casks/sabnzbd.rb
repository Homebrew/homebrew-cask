cask 'sabnzbd' do
  version '1.2.0'
  sha256 'e0059a20afd1c37fb82caf9afd5e7c7945d68e2e559270e5e408a6d9f452ab78'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'aff3949cf7e845bdd31324b749a6a7c73640af0256a7aaf53088a1926bc68b92'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
