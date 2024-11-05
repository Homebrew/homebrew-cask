cask "flickr-uploadr" do
  version "1.2,2142"
  sha256 :no_check

  url "https://downloads.flickr.com/uploadr/FlickrUploadr.dmg"
  name "Flickr Uploadr"
  desc "Photo upload tool"
  homepage "https://www.flickr.com/tools/"

  livecheck do
    url "https://downloads.flickr.com/uploadr/DEVBRANCH94103_FlickrUploadr-Info.plist"
    strategy :xml do |xml|
      short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
      version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text
      next if short_version.blank? || version.blank?

      "#{short_version.strip},#{version.strip}"
    end
  end

  app "Flickr Uploadr.app"

  zap trash: [
    "~/Library/Caches/com.flickr.flickrmac",
    "~/Library/HTTPStorages/com.flickr.flickrmac",
    "~/Library/Preferences/com.flickr.flickrmac.plist",
  ]
end
