cask "naver-whale" do
  version "2.8.108.15"
  sha256 :no_check

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
