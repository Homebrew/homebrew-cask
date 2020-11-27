cask "naver-whale" do
  version "2.8.108.15"
  sha256 "2e3b26ba030b871f0078fe44521b338edbae31f28d9ad64d4398d2a89f653d90"

  # update.whale.naver.net/downloads/installers/ was verified as official when first introduced to the cask
  url "http://update.whale.naver.net/downloads/installers/NaverWhale.dmg"
  appcast "https://cv.whale.naver.com/version/latest_version"
  name "NAVER Whale"
  desc "Web browser made by Naver Co, Ltd"
  homepage "https://whale.naver.com/"

  app "Whale.app"

  zap trash: [
    "~/Library/Caches/com.naver.Whale",
    "~/Library/Preferences/com.naver.Whale.plist",
    "~/Library/Saved Application State/com.naver.Whale.savedState",
  ]
end
