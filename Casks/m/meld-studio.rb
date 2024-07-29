cask "meld-studio" do
  version "0.7.1.1"
  sha256 :no_check

  url "https://packages.streamwithmeld.com/MeldStudioInstaller.dmg",
      verified: "packages.streamwithmeld.com/"
  name "Meld Studio"
  desc "Live streaming and recording software"
  homepage "https://www.meldstudio.co/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Meld Studio.app"

  zap trash: [
    "~/Library/Application Support/MeldStudio",
    "~/Library/HTTPStorages/co.meldstudio.MeldStudioUpdater",
    "~/Library/LaunchAgents/co.meldstudio.keystone.agent.plist",
    "~/Library/LaunchAgents/co.meldstudio.keystone.xpcservice.plist",
    "~/Library/LaunchAgents/co.meldstudio.MeldStudioUpdater.wake.plist",
    "~/Library/MeldStudio",
  ]
end
