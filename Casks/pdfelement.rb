cask 'pdfelement' do
  version '6.3.6,2991'
  sha256 '36461546dcb7c853ecdac6257f356d4091134e79addd94bd383cb3e77283652b'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  app 'PDFelement.app'
end
