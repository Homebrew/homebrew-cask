cask :v1 => 'rightzoom' do
  version :latest
  sha256 :no_check

  url 'http://www.blazingtools.com/mac/RightZoom.zip'
  homepage 'http://www.blazingtools.com/right_zoom_mac.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RightZoom.app'
end
