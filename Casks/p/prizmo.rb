cask "prizmo" do
  version "4.6.1"
  sha256 "8e92a1861872c655fb3be22a3ffb96d755d54e18571d2e3553c451368b6261cc"

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
  depends_on macos: ">= :catalina"

  app "Prizmo.app"

  zap trash: [
    "~/Library/Application Scripts/62UF8HAVJA.com.creaceed.prizmo",
    "~/Library/Application Scripts/com.creaceed.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.creaceed.prizmo2.sfl*",
    "~/Library/Containers/com.creaceed.prizmo*",
    "~/Library/Group Containers/62UF8HAVJA.com.creaceed.prizmo",
  ]
end
