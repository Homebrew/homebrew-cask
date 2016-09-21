cask 'shotcut' do
  version '16.09.01'
  sha256 'a3cf4864fc7dc2f98f579fd2db5162d86f98c698bad1a260d5126562382a4f08'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '9fa80f1d2ae03b025c94d2ce046ac2f9186ba3dededec3ee361feb4e86e1ca9d'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
