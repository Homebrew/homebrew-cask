cask "prizmo" do
  version "4.5.1"
  sha256 "9419e5cd1764d2be91f0c25b2d22b14db6965ed7caea99caafea86ae8077c415"

  url "https://creaceed.s3.amazonaws.com/downloads/prizmo#{version.major}_#{version}.zip",
      verified: "creaceed.s3.amazonaws.com/downloads/"
  name "Prizmo"
  desc "Scanning application with Optical Character Recognition (OCR)"
  homepage "https://creaceed.com/prizmo"

  livecheck do
    url "https://creaceed.com/appcasts/prizmo#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prizmo.app"

  zap trash: [
    "~/Library/Application Scripts/62UF8HAVJA.com.creaceed.prizmo",
    "~/Library/Application Scripts/com.creaceed.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.creaceed.prizmo2.sfl2",
    "~/Library/Containers/com.creaceed.prizmo*",
    "~/Library/Group Containers/62UF8HAVJA.com.creaceed.prizmo",
  ]
end
