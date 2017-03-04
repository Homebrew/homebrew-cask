cask 'cookie' do
  version '5.2.3'
  sha256 '85e9a60a01c0a3d3dbbbda348af41d37a759ce142973d1422f32e47556427bc4'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'd2af32091ae970072d91b2a3f61e0688e81f221102480044eb74bd40f8020d6e'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  depends_on macos: '>= :el_capitan'

  app 'Cookie.app'
end
