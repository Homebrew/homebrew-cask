cask 'sabnzbd' do
  version '1.0.2'
  sha256 'd48aeb52911206d05e5d3e61de3c6dab039e40984da06666849f5ca2ee0a0fb5'

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'ec86cfd3cc27e601017ccb754e9ab12a38d7ac8511e1f14dc7d0e79a91a1a1cc'
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
