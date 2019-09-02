cask 'electrumsv' do
  version '1.2.4'
  sha256 '905bbc2dcf65b476452c2c5117988e3c6e5e013b1e8bebdbdc43d29f3916a6dd'

  # s3.us-east-2.amazonaws.com/electrumsv-downloads was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
