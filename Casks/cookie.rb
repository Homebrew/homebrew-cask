cask 'cookie' do
  version '5.1.2'
  sha256 '34da97c7fe95add70588c2c08a82535dd7847b72be9160feaaf2da56e2d121d6'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '4f6e9dddc27f696a6555c24a765fdc9f08992db41083d30a1ed7095043d9d236'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
