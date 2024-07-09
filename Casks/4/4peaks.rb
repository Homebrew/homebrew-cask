cask "4peaks" do
  version "1.8"
  sha256 :no_check

  url "https://downloads.nucleobytes.com/4peaks.dmg"
  name "4Peaks"
  desc "Visualise and edit DNA sequence trace files"
  homepage "https://nucleobytes.com/4peaks/index.html"

  livecheck do
    url :homepage
    regex(/"product-version">v?\s+?(\d+(?:\.\d+)+)[\s<]/i)
  end

  app "4Peaks.app"

  zap trash: [
    "~/Library/Application Support/4Peaks",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mekentosj.4peaks.*",
    "~/Library/Caches/com.apple.helpd/Generated/4Peaks Help*",
    "~/Library/HTTPStorages/com.mekentosj.4peaks",
    "~/Library/Preferences/com.mekentosj.4peaks.plist",
    "~/Library/Saved Application State/com.mekentosj.4peaks.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
