cask "mapillary-uploader" do
  version "1.2.7"
  sha256 "4add517292efbb300e81d77fbb7386fd3343be3333b4f3146d40dd08caaebc27"

  url "https://tools.mapillary.com/uploader/Mapillary%20Uploader-#{version}.dmg"
  name "Mapillary Uploader for Desktop"
  homepage "https://www.mapillary.com/desktop-uploader"

  livecheck do
    url "https://www.mapillary.com/desktop-uploader"
    strategy :page_match
    regex(%r{href=.*?/Mapillary%20Uploader-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Mapillary Uploader.app"
end
