cask 'sabnzbd' do
  version '1.1.0'
  sha256 'bad84ec37a2d9e9acd254e50d5a0746001b4d81b1e1fb5186ece2a7c078fe501'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'ab70d22f87c7080c02ae3914b4a30563d72fb7c6a628e94ce92d40af60980968'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :mavericks'

  if MacOS.version == :mavericks
    app 'Mavericks/SABnzbd.app'
  elsif MacOS.version <= :yosemite
    app 'Yosemite/SABnzbd.app'
  else
    app 'SABnzbd.app'
  end

  zap delete: '~/Library/Application Support/SABnzbd'
end
