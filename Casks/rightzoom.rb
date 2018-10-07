cask 'rightzoom' do
  version :latest
  sha256 :no_check

  url 'https://www.blazingtools.com/mac/RightZoom.zip'
  name 'Right Zoom'
  homepage 'https://www.blazingtools.com/right_zoom_mac.html'

  app 'RightZoom.app'

  caveats do
    discontinued
  end
end
