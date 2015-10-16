cask :v1_1 => 'rightzoom' do
  version :latest
  sha256 :no_check

  url 'http://www.blazingtools.com/mac/RightZoom.zip'
  name 'Right Zoom'
  homepage 'http://www.blazingtools.com/right_zoom_mac.html'
  license :gratis

  app 'RightZoom.app'

  caveats do
    discontinued
  end
end
