cask "lifesize" do
  version "3.0.17"
  sha256 "6d5f185736ca99aaa52c102acc13ea484c7565b7ea1b1e8a826dcebed2bdb098"

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
  depends_on macos: ">= :high_sierra"

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

  caveats do
    requires_rosetta
  end
end
