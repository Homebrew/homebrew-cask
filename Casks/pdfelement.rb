cask 'pdfelement' do
  version '6.4.4,2991'
  sha256 'd02f6b0098882aa1ab9476b80b4b73b070f9748690007638e88348dc36337742'

  url "http://download.wondershare.com/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  app 'PDFelement.app'
end
