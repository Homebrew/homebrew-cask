cask 'soundnode' do
  version :latest
  sha256 :no_check

  url 'http://www.soundnodeapp.com/downloads/mac/Soundnode-App.zip'
  name 'Soundnode App'
  homepage 'http://www.soundnodeapp.com/'
  license :oss

  app 'Soundnode-App.app'
end
