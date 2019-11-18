cask 'rightzoom' do
  version '2.3'
  sha256 '85ea2e5940fb4d1fe2b0dd20a2489f925a0d4a96bb2663b9b22325bb1b7cc1a8'

  url "https://www.blazingtools.com/mac/RightZoom#{version.no_dots}.zip"
  appcast 'https://www.blazingtools.com/right_zoom_mac.html'
  name 'Right Zoom'
  homepage 'https://www.blazingtools.com/right_zoom_mac.html'

  app 'RightZoom.app'
end
