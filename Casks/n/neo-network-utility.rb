cask "neo-network-utility" do
  version "2.0"
  sha256 "803a4590c5c15a224f7418989e5c4e5bec490317b7cc9415b2a97a88cdb60ff6"

  url "https://download.devontechnologies.com/download/freeware/networkutility/#{version}/Neo_Network_Utility.dmg.zip"
  name "Neo Network Utility"
  desc "Network information and diagnostics utility"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=900000089"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Network Utility.app"

  zap trash: [
    "~/Library/HTTPStorages/com.devon-technologies.network-utility",
    "~/Library/Preferences/com.devon-technologies.network-utility.plist",
    "~/Library/Saved Application State/com.devon-technologies.network-utility.savedState",
  ]
end
