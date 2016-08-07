cask 'soundnode' do
  version :latest
  sha256 :no_check

  url 'http://www.soundnodeapp.com/downloads/mac/Soundnode.zip'
  name 'Soundnode'
  homepage 'http://www.soundnodeapp.com/'
  license :oss

  app 'Soundnode.app'
end
