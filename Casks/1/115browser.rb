cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "26.0.2.5"
  sha256 arm:   "81aa93d6000d42d333c256763c48d50256c7a40347f834f466c836c02f278492",
         intel: "37ec9646bfedda58937c9cdc65fe0eceebf2cba223bebd587d4bc964b341d5c7"

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
