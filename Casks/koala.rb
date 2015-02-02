cask :v1 => 'koala' do
  version '2.0.4'
  sha256 '8b0d3564db80bad52cbad1b0755a5ff55f6d1549ea8f55e4a309552261a61327'

  url "https://content-na.drive.amazonaws.com/cdproxy/templink/1NXZ32XO4l8CspGTBhtc_PcOCeXPMTHHzsCCcXbR3pAE0Xnc3?download=true"
  name 'Koala'
  homepage 'http://koala-app.com'
  license :apache

  app 'Koala.app'
end
