cask 'pdfelement-express' do
  version '1.2.0,4133'
  sha256 '13d506e32998e88c92a056ac978cb158085ef278df7867a20bfd68e20627d576'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement-express_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement Express for Mac'
  homepage 'https://pdf.wondershare.com/pdfelement-express-mac.html'

  app 'PDFelement Express.app'
end
