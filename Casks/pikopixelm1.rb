cask "pikopixelm1" do
  version "1.5b,150"
  sha256 "af5fbcceb79a2e8bc57892cd9fa7a34498bbe24885f403adaa2985991df63264"

  url "https://github.com/mariogt/PikoPixelM1/releases/download/v#{version}/PikoPixelM1-#{version.before_comma.dots_to_hyphens}.zip"
  name "PikoPixelM1"
  desc "Native apple silicon port of the original pixel art drawing tool PikoPixel"
  homepage "https://github.com/mariogt/PikoPixelM1"

  app "PikoPixelM1"

  zap trash: [
    "~/Library/Containers/com.mariogt.PikoPixelM1",
    "~/Library/Application Scripts/com.mariogt.PikoPixelM1",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mariogt.pikopixelm1.sfl2",
  ]
end
