cask "offergoose" do
  version :latest
  sha256 :no_check

  url "https://cdn.offergoose.com/assets/pc-releases/latest/com/OfferGoose-latest-arm64.dmg",
      verified: "cdn.offergoose.com"
  depends_on macos: ">= :catalina"

  name "OfferGoose"
  desc "AI Interview Copilot designed for job seekers"
  homepage "https://www.offergoose.com/"

  app "OfferGoose.app"

  zap trash: [
    "~/Library/Application Support/OfferGoose",
    "~/Library/Preferences/com.offergoose.app.plist",
  ]
end