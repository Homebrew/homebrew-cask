cask 'fluid' do
  version '1.8.5'
  sha256 'aa644629b2f3ccf79e0fc88cd59d747d84e8ad330e5d6fc3d7e09f68214b67b5'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          checkpoint: 'a4f30ede491c600675f005416f7c76dd2945daeb71d5ecb1f7621bedc0416e30'
  name 'Fluid'
  homepage 'http://fluidapp.com/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Fluid.app'
end
