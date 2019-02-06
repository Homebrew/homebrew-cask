cask 'beaker-browser' do
  version '0.8.3'
  sha256 'f06f07b361873f5562c87f50a8ca3ae93e168e0ebb3b96db6362ba68e98d9d07'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
