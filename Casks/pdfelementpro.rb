cask 'pdfelementpro' do
  version '6.7.12,2992'
  sha256 'cba7041514132e311a2763b7d9eae8d8ac3596bdf7ded8c45127e48d731b1002'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}-pro_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement Professional for Mac'
  homepage 'https://pdf.wondershare.com/'

  app "PDFelementPro#{version.major}.app"
end
