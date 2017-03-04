cask 'flickr-uploadr' do
  version :latest
  sha256 :no_check

  url 'https://downloads.flickr.com/uploadr/FlickrUploadr.dmg'
  name 'Flickr Uploadr'
  homepage 'https://www.flickr.com/tools/'

  app 'Flickr Uploadr.app'
end
