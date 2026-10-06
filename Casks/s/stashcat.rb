cask "stashcat" do
  version "6.53.1"
  sha256 "c3b8b2eb6016363bd36afb3f23ab393f7accc650794c0f64c21396550dced733"

  url "https://stashcat.s3-de-central.profitbricks.com/releases/darwin/stashcat-#{version}-darwin.zip"
  name "Stashcat"
  desc "Secure messenger for organisations"
  homepage "https://stashcat.com/"

  livecheck do
    url "https://cc.edyou.eu/desktop/update?channel=release&version=0.0.1&app_id=null&platform=darwin&product=stashcat"
    strategy :json do |json|
      json["name"]&.[](/stashcat[._-]v?(\d+(?:\.\d+)+)-darwin\.zip/i, 1)
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Stashcat.app"

  zap trash: [
    "~/Library/Application Support/Stashcat",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger.ShipIt",
    "~/Library/HTTPStorages/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Preferences/de.heinekingmedia.stashcatdesktopmessenger.plist",
    "~/Library/Saved Application State/de.heinekingmedia.stashcatdesktopmessenger.savedState",
  ]
end
