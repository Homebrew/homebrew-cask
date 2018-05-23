cask 'shotcut' do
  version '18.05.08'
  sha256 '066b768d5986e7d1ee7c6ead0aa28d27e6a6ba5b774f4528c3a7ba5aa4ca32ae'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '43f62dad679bdcebffc40635a45e583b6f8acbdf105e5c6a100c238008d175d7'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
