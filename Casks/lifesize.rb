cask "lifesize" do
  version "3.0.14"
  sha256 "b9b56a62bc9d69465fca7128bd58a6f3e45cf60afa872c7cc06fa36059c8ea04"

  url "https://download.lifesizecloud.com/Lifesize-#{version}-mac.zip",
      verified: "download.lifesizecloud.com/"
  name "lifesize"
  desc "Cloud contact and video conferencing"
  homepage "https://www.lifesize.com/"

  livecheck do
    url "https://download.lifesizecloud.com/update?version=0.0.0"
    regex(/Lifesize[._-]v?(\d+(?:\.\d+)+)-mac\.zip/i)
  end

  auto_updates true

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
