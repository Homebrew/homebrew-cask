cask 'beaker-browser' do
  version '0.8.0-prerelease.9'
  sha256 '18f4edbc9c985562a949b9220cbe63bb100833db5028ef7da0b9ffa426153942'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
