cask 'buttercup' do
  version '1.18.1'
  sha256 'c8ffeee81b44c4734d94799a28bf7912037fe5ca04a0a487a1c05badfdca719a'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
