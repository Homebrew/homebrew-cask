cask 'electrumsv' do
  version '1.2.5'
  sha256 'ebe5fd2cb2b6b9d4dfc17faf94993f629e16a3fd68b4d0fbbbeb93d4210ea4f4'

  # s3.us-east-2.amazonaws.com/electrumsv-downloads was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
