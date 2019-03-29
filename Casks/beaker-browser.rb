cask 'beaker-browser' do
  version '0.8.6'
  sha256 '7b9e06cf0e83882579c442383d419d7581164d52bda51e06a7d3c2045f359ef4'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
