cask "mtmr" do
  version "0.28"
  sha256 "4390f2996ee6383cce0cfdf8554035d1001dc8651d77dfe7e39e9746348665da"

  url "https://github.com/Toxblh/MTMR/releases/download/v#{version}/MTMR.#{version}.dmg"
  name "My TouchBar. My rules"
  desc "TouchBar customization app"
  homepage "https://mtmr.app/"

  auto_updates true
  depends_on macos: :monterey

  app "MTMR.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/toxblh.mtmr.sfl*",
    "~/Library/Application Support/MTMR",
    "~/Library/HTTPStorages/Toxblh.MTMR",
    "~/Library/Preferences/Toxblh.MTMR.plist",
  ]
end
