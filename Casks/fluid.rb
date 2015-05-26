cask :v1 => 'fluid' do
  version '1.8.4'
  sha256 'abf5c99d45b23be3df1b62da798beab7a4fed176d28d508c2629d2d089a491ce'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          :sha256 => 'da98adbb75cb35c7ae8973c4721cba47f5d9cc06ceaef58d6b00d95bcdb7b549'
  name 'Fluid'
  homepage 'http://fluidapp.com/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Fluid.app'
end
