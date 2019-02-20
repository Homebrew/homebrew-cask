cask 'electrumsv' do
  version '1.1.0'
  sha256 '9c1c0d91ffe36e2e18317dcb1a611d10c87b3f12b7a18c0ff15aab9b0c8870f1'

  url "https://electrumsv.io/download/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
