cask 'openmsx' do
  version '0.14.0'
  sha256 '05ab7470a116ddd09a8ae3320116372c97e4f682ccb642ce087f892a40d10cb4'

  # github.com/openMSX/openMSX was verified as official when first introduced to the cask
  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-x86_64-bin.dmg"
  appcast 'https://github.com/openMSX/openMSX/releases.atom'
  name 'openMSX'
  homepage 'https://openmsx.org/'

  app 'openMSX.app'
end
