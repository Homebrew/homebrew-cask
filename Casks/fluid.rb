cask 'fluid' do
  version '1.8.4'
  sha256 'abf5c99d45b23be3df1b62da798beab7a4fed176d28d508c2629d2d089a491ce'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          checkpoint: 'c90b9c819d4a6269f177bd496b6a3b43045e9b25c3d66973763d5b01af4fff53'
  name 'Fluid'
  homepage 'http://fluidapp.com/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Fluid.app'
end
