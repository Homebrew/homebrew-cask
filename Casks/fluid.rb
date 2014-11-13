cask :v1 => 'fluid' do
  version '1.8.3'
  sha256 '56438a946b281b009626a06cb099a7198e948bc8bef18a19c1bceb28bbe4d619'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss',
          :sha256 => '260c43831d82b9fa593d9f32cca7bc61b594f5993908b104601ed866ee7c518a'
  homepage 'http://fluidapp.com/'
  license :unknown

  app 'Fluid.app'
end
