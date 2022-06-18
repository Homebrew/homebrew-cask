cask "lifesize" do
  version "2.216.2929"
  sha256 "2d7c2e78eb6484187d334e0f3ca1870b84a8fe649fea5b65cfd648903f04d935"

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
