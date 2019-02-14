cask 'pdfelement-express' do
  version '1.2.1,4133'
  sha256 'dd60c96c53725e1165a951b5b8c6c82acfbf7d47b91f2ab06ed662326df7eb34'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement-express_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement Express for Mac'
  homepage 'https://pdf.wondershare.com/pdfelement-express-mac.html'

  app 'PDFelement Express.app'
end
