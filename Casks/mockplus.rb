cask 'mockplus' do
  version '3.2.10.2'
  sha256 'f6d32bfa90d32c06e822416626ae8976f75a3ed971fa37207890f4b73726aec9'

  # s3-us-west-1.amazonaws.com/mockplus-static was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/mockplus-static/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
