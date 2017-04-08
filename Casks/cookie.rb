cask 'cookie' do
  version '5.2.4'
  sha256 '01695c31c6f9cf06efbf881ae3d8bf6b5c6c07e05f5bc682e1dd9198fcbeab50'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '396ee4d1bb398eb89db216f2456b469392287eb21a7eec8addab825a2d607c83'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  depends_on macos: '>= :el_capitan'

  app 'Cookie.app'
end
