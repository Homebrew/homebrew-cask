cask 'pdfelement' do
  version '6.0.1.2654,2991'
  sha256 '1b19380155f0606caeae45fe2f7e2294ba9645a79ca0af7648229cfe345a9b93'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement for Mac'
  homepage 'https://pdf.wondershare.com/'

  app 'PDFelement.app'
end
