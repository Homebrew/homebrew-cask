cask 'fluid' do
  version '1.8.5'
  sha256 'aa644629b2f3ccf79e0fc88cd59d747d84e8ad330e5d6fc3d7e09f68214b67b5'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          checkpoint: '0db21720ba6bb7d289f452e7719f48e5ad0deb9e52ee9efc521857838e58416c'
  name 'Fluid'
  homepage 'http://fluidapp.com/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Fluid.app'
end
