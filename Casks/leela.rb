cask 'leela' do
  version '0.10.0'
  sha256 '567ce9969675d04a4373a2604b8e9c84b2b2d25509edf62b317316e12b78f4a6'

  url "https://sjeng.org/dl/Leela_#{version}.dmg"
  name 'Leela'
  homepage 'https://sjeng.org/leela.html'

  app 'Leela.app'
  app 'Leela OpenCL.app'
end
