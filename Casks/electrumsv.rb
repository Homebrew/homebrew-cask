cask 'electrumsv' do
  version '1.2.0'
  sha256 '37d2612c2dc8c1b8a0c61051f138bdcaaea75ef38c25187041f78cc50e3a378d'

  url "https://electrumsv.io/download/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
