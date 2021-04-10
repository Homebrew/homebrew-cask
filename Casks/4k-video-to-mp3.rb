cask "4k-video-to-mp3" do
  version "3.0.0"
  sha256 "591e27aeecf0adab9f9787d0d6da96a0945cd9679c38cd58a7c61dbc9333c4f7"

  url "https://dl.4kdownload.com/app/4kvideotomp3_#{version}.dmg"
  name "4K Video to MP3"
  desc "Convert any video to MP3"
  homepage "https://www.4kdownload.com/products/product-videotomp3"

  livecheck do
    url "https://www.4kdownload.com/download"
    strategy :page_match
    regex(%r{href=.*?/4kvideotomp3_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "4K Video to MP3.app"

  zap trash: [
    "~/Library/Preferences/com.4kdownload.4K Video to MP3.plist",
    "~/Library/Application Support/4kdownload.com",
  ]
end
