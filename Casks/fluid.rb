cask :v1 => 'fluid' do
  version '1.8.4'
  sha256 'ccb7d282e9613ebd1949f27e942b4cf516dea1c0cf45c3c2ee4042893a6e97d3'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          :sha256 => '260c43831d82b9fa593d9f32cca7bc61b594f5993908b104601ed866ee7c518a'
  name 'Fluid'
  homepage 'http://fluidapp.com/'
  license :commercial

  app 'Fluid.app'
end
