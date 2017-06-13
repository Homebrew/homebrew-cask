cask 'popchar' do
  version '7.7.1'
  sha256 '928401b6a7198002c56621fb314c4b5d34fddc09797884b97fd71b3e0e9d734f'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/popcharx/history.html',
          checkpoint: '7084d13fa910e71e567325434d518f7e8f7c3fda7aa99cd2f95ec2881a65f4ff'
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
