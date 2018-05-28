cask 'ghost' do
  version '1.6.0'
  sha256 '24d2ab850f6a28c067655524439cbe51d39e849e63a0f6e4ce841d4282b64f04'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.dmg"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: 'd06349f3893b35d2622cb81fdd9c05ac65c4deef113bfcc5d5a840a23796af7e'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  depends_on macos: '>= :mavericks'

  app 'Ghost.app'
end
