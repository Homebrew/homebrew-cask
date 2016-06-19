cask 'sabnzbd' do
  version '1.0.3'
  sha256 '0120f71189601a4b64e2309b671ddf892da8f50a4ad9716146d36baf83c6aae6'

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '81fa1b34972d021823c7043bbff2d4dbaf3d38716177552a6d3ceaa7a71d90e2'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'
  license :gpl

  depends_on macos: '>= :mavericks'

  if MacOS.release == :mavericks
    app 'Mavericks/SABnzbd.app'
  elsif MacOS.release <= :yosemite
    app 'Yosemite/SABnzbd.app'
  else
    app 'SABnzbd.app'
  end

  zap delete: '~/Library/Application Support/SABnzbd'
end
