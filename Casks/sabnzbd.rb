cask 'sabnzbd' do
  version '2.3.4'
  sha256 'a97143167df9bcc85e4aa524cf5e966582d356c7b2699ee5b76d399aa8a1dc84'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '0e3363f513a7b2782d297b8732a75c34e64ada080c1df7a1008fa380d7a2632e'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap trash: '~/Library/Application Support/SABnzbd'
end
