cask 'beaker-browser' do
  version '0.8.0-prerelease.5'
  sha256 '5712914c3c6ea0a824e66c8ae1c180cb69b179086e5b80f2f66c8d9601621bab'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom',
          checkpoint: 'fa46ebab5e79c4fde9698bc69eb32753a90ee33a64916da7cb9f8ab17d740697'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
