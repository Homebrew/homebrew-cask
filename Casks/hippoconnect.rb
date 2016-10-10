cask 'hippoconnect' do
  version :latest
  sha256 :no_check

  url 'http://hipporemote.com/HippoConnect/mac/HippoConnect.zip'
  name 'HippoConnect'
  homepage 'http://hipporemote.com/'

  app 'HippoConnect.app'
end
