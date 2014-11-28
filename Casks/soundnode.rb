cask :v1 => 'soundnode' do
  version :latest
  sha256 :no_check

  url 'http://www.soundnodeapp.com/downloads/mac/Soundnode-App.zip'
  homepage 'http://www.soundnodeapp.com/'
  license :oss

  app 'Soundnode-App.app'
end
