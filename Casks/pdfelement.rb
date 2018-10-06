cask 'pdfelement' do
  version '6.7.5,2991'
  sha256 '71ae9e2c7cc4f76401b0df90a616c9718079f8ca56e7e6170a67684d64c0aa34'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "PDFelementStd#{version.major}.app", target: "PDFelement #{version.major}.app"
end
