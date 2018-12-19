cask 'beaker-browser' do
  version '0.8.0'
  sha256 'c14a3450c5ed2e900da57e098d278d7d4b6dcacc661c1396727126fb9d625fa4'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
