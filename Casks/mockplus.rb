cask 'mockplus' do
  version '3.3.2.4'
  sha256 'ffdd94be31e66bcb0580921cb62b0b52da795cbd151db204c186d03fad62b86c'

  # s3-us-west-1.amazonaws.com/mockplus-static was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/mockplus-static/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
