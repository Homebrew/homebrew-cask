cask "ripcord" do
  version "0.4.29"
  sha256 "bacfb539fac9df2004a926ff57232622e53b668cbdbc6c2201b3ac87b91d2550"

  url "https://cancel.fm/dl/Ripcord_Mac_#{version}.zip"
  name "Ripcord"
  desc "Desktop chat client for Slack (and Discord)"
  homepage "https://cancel.fm/ripcord/"

  livecheck do
    url "https://cancel.fm/ripcord/updates/v1"
    regex(%r{/Ripcord_Mac_(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "Ripcord.app"

  zap trash: [
    "~/Library/Application Support/Ripcord",
    "~/Library/Preferences/com.cancelfm.Ripcord.plist",
    "~/Library/Saved Application State/com.cancelfm.Ripcord.savedState",
  ]
end
