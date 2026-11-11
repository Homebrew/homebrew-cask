cask "naver-whale" do
  version "5.41.429.5"
  sha256 :no_check

  url "https://installer-whale.pstatic.net/downloads/installers/NaverWhale.dmg"
  name "NAVER Whale"
  desc "Web browser"
  homepage "https://whale.naver.com/"

  livecheck do
    url "https://cv.whale.naver.com/version/latest_version"
    strategy :json do |json|
      json.dig("message", "@version")
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Whale.app"

  zap trash: [
    "~/Library/Caches/com.naver.Whale",
    "~/Library/Preferences/com.naver.Whale.plist",
    "~/Library/Saved Application State/com.naver.Whale.savedState",
  ]
end
