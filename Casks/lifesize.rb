cask "lifesize" do
  version "2.216.2893"
  sha256 "a624026c2a8b26b5812492cb491829ae941924def663ab842c1483a6398a0394"

  url "https://download.lifesizecloud.com/Lifesize-#{version}-mac.zip",
      verified: "download.lifesizecloud.com/"
  name "lifesize"
  desc "Cloud contact and video conferencing"
  homepage "https://www.lifesize.com/"

  livecheck do
    url "https://download.lifesizecloud.com/update?version=0.0.0"
    regex(/Lifesize[._-]v?(\d+(?:\.\d+)+)-mac\.zip/i)
  end

  app "Lifesize.app"

  zap trash: [
    "~/Library/Application Support/Lifesize",
    "~/Library/Caches/com.lifesize.cloud",
    "~/Library/Caches/com.lifesize.cloud.ShipIt",
    "~/Library/HTTPStorages/com.lifesize.cloud",
    "~/Library/LaunchAgents/com.lifesize.LifesizeAppService.agent.plist",
    "~/Library/Logs/Lifesize",
    "~/Library/Preferences/com.lifesize.cloud.plist",
    "~/Library/Saved Application State/com.lifesize.cloud.savedState",
  ]
end
