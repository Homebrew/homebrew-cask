cask 'fluid' do
  version '1.8.4'
  sha256 'abf5c99d45b23be3df1b62da798beab7a4fed176d28d508c2629d2d089a491ce'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          :sha256 => 'f8904c1ede238b18f86834ea792e10264844b84e1b3569a3fb1c24a761c97e6c'
  name 'Fluid'
  homepage 'http://fluidapp.com/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Fluid.app'
end
