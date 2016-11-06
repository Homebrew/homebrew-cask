cask 'fluid' do
  version '1.8.6'
  sha256 '82a3e4d634383b2423adb16fbc15699c7c0927180f1ac58e223f6eaf524d99c0'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast "http://fluidapp.com/appcast/fluid#{version.major}.rss",
          checkpoint: 'fbc75fb1251ce981acce75c680073b0e360b27e67dcf869d63ab5437387e015b'
  name 'Fluid'
  homepage 'http://fluidapp.com/'

  depends_on macos: '>= :snow_leopard'

  app 'Fluid.app'
end
