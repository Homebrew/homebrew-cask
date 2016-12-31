cask 'poi' do
  version '7.3.0'
  sha256 '10a0150600c9bb95021c0e198057d6764bed796fc5b894c9ee4d4b0752fff6ab'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'c4e14892affb593a9b76b68307a6fff9bd9a1fbe76f896c293313ee3929a71a6'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'
end
