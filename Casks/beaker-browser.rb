cask 'beaker-browser' do
  version '0.8.0-prerelease.6'
  sha256 '0382d8cf7d563677c444d01d5f9d9281e87ec97a714c14a1a183cffe4f85a5fb'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
