cask "flickr-uploadr" do
  version "1.2,2142"
  sha256 :no_check

  url "https://downloads.flickr.com/uploadr/FlickrUploadr.dmg"
  name "Flickr Uploadr"
  desc "Photo upload tool"
  homepage "https://www.flickr.com/tools/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Flickr Uploadr.app"
end
