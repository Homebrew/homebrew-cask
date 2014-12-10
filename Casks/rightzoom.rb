cask :v1 => 'rightzoom' do
  version :latest
  sha256 :no_check

  url 'http://www.blazingtools.com/mac/RightZoom.zip'
  homepage 'http://www.blazingtools.com/right_zoom_mac.html'
  license :unknown    # todo: improve this machine-generated value

  app 'RightZoom.app'
end
