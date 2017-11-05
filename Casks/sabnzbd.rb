cask 'sabnzbd' do
  version '2.3.1'
  sha256 '0b7e57597ae92709e41a31d20c61cbdefeb584b154108c8b8bbed34fabf2a721'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'cb8296dc1924813ec030387e48ba715e797530751027d9329a8b6d5e503112fc'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
