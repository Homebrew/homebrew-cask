cask 'mockplus' do
  version '3.4.1.2'
  sha256 '5cb79d9066fb9a148a546b58c3b07909e9b13c971329ed47210e616c08b22ab5'

  # s3-us-west-1.amazonaws.com/mockplus-static was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/mockplus-static/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
