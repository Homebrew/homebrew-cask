cask "naver-whale" do
  version "2.8.105.22"
  sha256 "7c68a5c58f8852db829f1ffdc5a2f592c36a818630b15e78fbcc42464d79615a"

  # update.whale.naver.net/downloads/installers/ was verified as official when first introduced to the cask
  url "http://update.whale.naver.net/downloads/installers/NaverWhale.dmg"
  appcast "https://whale.naver.com/changelog/"
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
