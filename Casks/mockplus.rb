cask 'mockplus' do
  version '3.4.1.2'
  sha256 '5cb79d9066fb9a148a546b58c3b07909e9b13c971329ed47210e616c08b22ab5'

  # mockplus-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
