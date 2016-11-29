cask 'luxrender' do
  version '1.5.1'
  sha256 'd7854ced122b198d8af71aed4418ea952916d2810c4b0ae176ac9e4f7e011295'

  url "http://www.luxrender.net/release/luxrender/#{version.major_minor}/mac/LuxRender_#{version}_OSXIntel_64bit.dmg"
  name 'LuxRender'
  homepage 'http://www.luxrender.net/wiki/Main_Page'

  app 'LuxRender/LuxRender.app'
end
