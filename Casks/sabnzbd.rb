cask 'sabnzbd' do
  version '2.3.0'
  sha256 'cafe5a7d106b83f273c50cd5450e8d5e25e6d8655b65f48687cc783756a42e82'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '2c4e96201a9aa5b45b3d906fec78fe946afad179b094a37dc9d3c52e05243b71'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
