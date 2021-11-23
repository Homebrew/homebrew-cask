cask "prizmo" do
  version "4.2.2,4.277.1373"
  sha256 "a5fa90704f262c69218b2e70bbb35f746bc77bb4e14c649c68c9e16b5dbaa22f"

  url "https://creaceed.s3.amazonaws.com/downloads/prizmo#{version.major}_#{version.before_comma}.zip",
      verified: "creaceed.s3.amazonaws.com/downloads/"
  name "Prizmo"
  desc "Scanning application with Optical Character Recognition (OCR)"
  homepage "https://creaceed.com/prizmo"

  livecheck do
    url "https://creaceed.com/appcasts/prizmo#{version.major}.xml"
    strategy :sparkle
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
