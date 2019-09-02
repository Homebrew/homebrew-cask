cask 'mockplus' do
  version '3.5.1.0'
  sha256 'f14c2e12ca130d25b62a4f7da7db7af09cfecc5cb2170cae924bcc4872d6beb9'

  # mockplus-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}.dmg"
  appcast 'https://www.mockplus.com/download'
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
