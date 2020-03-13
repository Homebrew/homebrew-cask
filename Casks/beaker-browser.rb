cask 'beaker-browser' do
  version '0.8.9'
  sha256 '87caaf3b6821bbdc1132a8870914cb5c8fde0164fbcbdfb5407c070362fe925d'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
