class Fluid < Cask
  version '1.8.3'
  sha256 '56438a946b281b009626a06cb099a7198e948bc8bef18a19c1bceb28bbe4d619'

  url "http://fluidapp.com/dist/Fluid_#{version}.zip"
  appcast 'http://fluidapp.com/appcast/fluid1.rss'
  homepage 'http://fluidapp.com/'

  app 'Fluid.app'
end
