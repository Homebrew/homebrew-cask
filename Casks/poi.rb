cask 'poi' do
  version '7.3.0'
  sha256 '10a0150600c9bb95021c0e198057d6764bed796fc5b894c9ee4d4b0752fff6ab'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'a7cfdeecffb231551946cdb08d50db8a84610d10321c81b3218c829cb90625fb'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'
end
