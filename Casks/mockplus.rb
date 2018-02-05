cask 'mockplus' do
  version '3.2.10.2'
  sha256 '737974c1598848b9b30cdc10b6a60508d96f49b63e348d3c9139b280ccdf6c0b'

  # mockplus.com is the english version of mockplus.cn (official), creators of the software
  url "https://s3-us-west-1.amazonaws.com/mockplus-static/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
