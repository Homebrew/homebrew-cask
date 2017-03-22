cask 'sabnzbd' do
  version '1.2.3'
  sha256 '0920e42ee25aaf80ee99683f7b857d0b876c7f8b1f67166679d8d505aa577142'

  # github.com/sabnzbd/sabnzbd was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'fdbd52856a73bfcd3ba2cbe7ef485009d59c32ad363a6bcdfcc562b1c7689c34'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'

  depends_on macos: '>= :yosemite'

  app 'SABnzbd.app'

  zap delete: '~/Library/Application Support/SABnzbd'
end
