cask 'electrumsv' do
  version '1.2.1'
  sha256 'b139694b7eaa67e9719c07c405f6a12a02dae000bef81094c41a99ed9d12e13b'

  # s3.us-east-2.amazonaws.com/electrumsv-downloads was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
