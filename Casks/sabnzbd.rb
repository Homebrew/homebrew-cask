cask 'sabnzbd' do
  version '2.3.3'
  sha256 '77a51dcbf96928597463739cffd5f0b0c3f89a42250699cdd3f85712d5bcdaaa'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '84faf317bbf795deab4de9968f880031b2af1ca9be442a4522587275119e2f2a'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap trash: '~/Library/Application Support/SABnzbd'
end
