cask 'cookie' do
  version '5.1'
  sha256 'c378e590c49e88b9a67ce193307d1fc40e5de19c3510bc1356c2b9c2eacc8e0f'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '80a4b2de1ba33195ad07d3436d29e4e920f0161f67fe786f1d4eddb48e09d1ad'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
