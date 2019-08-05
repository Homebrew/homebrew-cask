cask 'electrumsv' do
  version '1.2.3'
  sha256 '21264ad4ab1262271572b0d47ff1da0c00c8b173ce5a409b4996d471416bc3b6'

  # s3.us-east-2.amazonaws.com/electrumsv-downloads was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
