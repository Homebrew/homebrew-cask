cask "4k-video-to-mp3" do
  version "3.0.1"
  sha256 "3a9b4b9920a712e3e356ea09ca770b8d59c88926ae7a63bd530a2d9682a24a8b"

  url "https://dl.4kdownload.com/app/4kvideotomp3_#{version}.dmg"
  name "4K Video to MP3"
  desc "Convert any video to MP3"
  homepage "https://www.4kdownload.com/products/product-videotomp3"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kvideotomp3_(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "4K Video to MP3.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.4K Video to MP3.plist",
  ]
end
