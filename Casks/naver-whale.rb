cask "naver-whale" do
  version "2.8.107.17"
  sha256 "0e7330d46c163ce4229f5614e12974da488d4f0228ce4824eff074e7e265cf54"

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
