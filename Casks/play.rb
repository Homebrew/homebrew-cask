cask 'play' do
  version '2.0.16'
  sha256 '6554961e11bc78873a2ccf1bed33c387763f969541556d119f506c4eaee77c3f'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: '19544fa2c74c79d9c56016dacf785749a09873bf0f00f7d239272bc73702955f'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap trash: [
               '~/Library/Application Support/Play',
               '~/Library/Caches/Play',
             ]
end
