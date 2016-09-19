cask 'cookie' do
  version '5.1.1'
  sha256 '7768f4071a5566b8294090a6200096b7a95b4bddc4ad9eba0943aebc190a9ecb'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '4f75c39159206a3dca1992fdf4d6e24101e5ebcdf0519b6bdeceea4df0af1d54'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
