cask 'darktable' do
  version '3.0.0'
  sha256 '8972fd773ff599c2baca0cd9e1b89e20a9e62495cf08ad94c8b9b7ed5962cd4b'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  conflicts_with cask: 'darktable-dev'

  app 'darktable.app'
end
