cask 'beaker-browser' do
  version '0.8.7'
  sha256 'd2a96e7d9c072b8762a0763185ae2d9c03f76f795c9ac914afe4dc98c2f9356d'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
