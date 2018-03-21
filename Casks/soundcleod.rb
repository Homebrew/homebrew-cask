cask 'soundcleod' do
  version '1.3.3'
  sha256 'eac858e725336dfe79af7df20fec04991ec8503a95e872a3f9c12545ce17cb0d'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '50f8012639e8d52e3bb189d511f2a29fa5b039dffe1e17fa330fab2840c8a6f5'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
