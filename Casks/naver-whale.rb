cask "naver-whale" do
  arch arm: "ARM64"

  version "3.20.182.14"
  sha256 :no_check

  url "http://update.whale.naver.net/downloads/installers/NaverWhale#{arch}.dmg",
      verified: "update.whale.naver.net/downloads/installers/"
  name "NAVER Whale"
  desc "Web browser"
  homepage "https://whale.naver.com/"

  livecheck do
    url "https://cv.whale.naver.com/version/latest_version"
    strategy :json do |json|
      json["message"]["@version"]
    end
  end

  app "Whale.app"

  zap trash: [
    "~/Library/Caches/com.naver.Whale",
    "~/Library/Preferences/com.naver.Whale.plist",
    "~/Library/Saved Application State/com.naver.Whale.savedState",
  ]
end
