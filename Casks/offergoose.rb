cask "offergoose" do
    version :latest
    sha256 :no_check
  
    language "zh", "CN" do
      url "https://cdn.offergoose.cn/assets/pc-releases/latest/cn/OfferGoose-latest-arm64.dmg",
          verified: "cdn.offergoose.cn"
      depends_on macos: ">= :ventura"
    end
  
    language "en", default: true do
      url "https://cdn.offergoose.com/assets/pc-releases/latest/com/OfferGoose-latest-arm64.dmg",
          verified: "cdn.offergoose.com"
      depends_on macos: ">= :catalina"
    end
  
    name "OfferGoose"
    desc "Tools for AI Interview Copilot for Job Seekers"
    homepage "https://www.offergoose.com/"
  
    app "OfferGoose.app"
  
    zap trash: [
      "~/Library/Application Support/OfferGoose",
      "~/Library/Preferences/com.offergoose.app.plist"
    ]
  end