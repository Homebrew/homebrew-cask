cask "owlocr" do
  version "7.22.0"
  sha256 "6d7d4dcd6ec16c634792437bfea7a3cc08e3aba52da2f9e355fe08517304fc6d"

  url "https://owlocr.com/updates/mac/OwlOCR-#{version}-universal.dmg"
  name "OwlOCR"
  desc "On-device OCR for screenshots, images, and PDFs"
  homepage "https://owlocr.com/"

  livecheck do
    url "https://owlocr.com/updates/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "OwlOCR.app"

  zap trash: [
    "~/Library/Application Scripts/F35YQQ5672.JonLuca-DeCaro.OwlOCR",
    "~/Library/Application Scripts/JonLuca-DeCaro.OwlOCR.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jonluca-decaro.owlocr.sfl*",
    "~/Library/Application Support/owlocr-electron",
    "~/Library/Caches/JonLuca-DeCaro.OwlOCR",
    "~/Library/Caches/owlocr-electron",
    "~/Library/Caches/owlocr-helper",
    "~/Library/Containers/JonLuca-DeCaro.OwlOCR.*",
    "~/Library/Group Containers/F35YQQ5672.JonLuca-DeCaro.OwlOCR",
    "~/Library/HTTPStorages/JonLuca-DeCaro.OwlOCR",
    "~/Library/HTTPStorages/owlocr-helper",
    "~/Library/Preferences/F35YQQ5672.JonLuca-DeCaro.OwlOCR.plist",
    "~/Library/Preferences/JonLuca-DeCaro.OwlOCR.plist",
  ]
end
