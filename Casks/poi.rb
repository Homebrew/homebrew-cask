cask 'poi' do
  version '7.2.1'
  sha256 '4dffcb2790d22c2769f60f8615eff9421bc44320ed759ddd2458c46f6c716466'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'c4e14892affb593a9b76b68307a6fff9bd9a1fbe76f896c293313ee3929a71a6'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'
end
