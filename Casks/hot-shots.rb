cask 'hot-shots' do
  version '2.5'
  sha256 'ab8b108b6fba399e6adc6eb69b0964c3a86645a2c845d95817bbf03b61198a03'

  url "https://gngrwzrd.com/HotShots#{version.to_i}.zip"
  appcast 'https://www.gngrwzrd.com/hotshots2-appcast.xml',
          :checkpoint => 'd0ad8f060c3d574688563b4b44e71962258846889035c0d62cf3a5f1a6d60ec5'
  name 'Hot Shots'
  homepage 'https://gngrwzrd.com/hotshots/'
  license :commercial

  app "Hot Shots #{version.to_i}.app"
end
