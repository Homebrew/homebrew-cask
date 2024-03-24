cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "26.0.5.3"
  sha256 arm:   "0adff4bf4a42dc4d23ddf8ab6efe3ae0b47efcae82876d868c6941a2e49575f1",
         intel: "e225171038e26725869f3f5d0c27626e79f87e800cbab903cb36a2e7b9b50e9e"

  url "https://down.115.com/client/mac/115br_v#{version}_#{arch}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/browser.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json["data"]["mac"]["version_code"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
