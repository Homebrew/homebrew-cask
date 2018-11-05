cask 'pdfelementpro' do
  version '6.7.6,2992'
  sha256 'a82dda075917d15fac72d62a3731e080a851d873a2531a8a89b353b7e2c41a1e'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}-pro_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement Professional for Mac'
  homepage 'https://pdf.wondershare.com/'

  app "PDFelementPro#{version.major}.app"
end
