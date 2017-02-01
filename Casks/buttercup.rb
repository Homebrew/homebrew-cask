cask 'buttercup' do
  version '0.8.1'
  sha256 '655b09cb004f0554bbc6948e8bec09750fe811b3814f51c5b3240944757b205d'

  # github.com/buttercup-pw/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup-pw/buttercup/releases/download/v#{version}-alpha/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup-pw/buttercup/releases.atom',
          checkpoint: '5b44f677b8deb75fa8bc40d67b5dce761a1d74d173d6768c3e321c4f83acf2f9'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
