cask 'beaker-browser' do
  version '0.8.4'
  sha256 '3b32a6062f6b29bef6680b7a9bc20e1f163b7d9f9203eebd3605f5c5919b1001'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
