cask 'mockplus' do
  version '3.6.0.4'
  sha256 'e7b4cb2dca00d4b5574948d76d7114d6504b1f7dbde4e07f79bd23797161db74'

  # mockplus-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}.dmg"
  appcast 'https://www.mockplus.com/download'
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
