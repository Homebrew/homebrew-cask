cask 'mute-me' do
  version '1.2.0'
  sha256 'ac5731d090dc3e49974be079e48dbfefcdefc203d7b1319b1bdffe96fe768325'

  # github.com/pixel-point/mute-me was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/mute-me/releases/download/v#{version}/mute-me-v#{version}.zip"
  appcast 'https://github.com/pixel-point/mute-me/releases.atom'
  name 'Mute Me'
  homepage 'https://muteme.pixelpoint.io/'

  app 'Mute Me.app'
end
