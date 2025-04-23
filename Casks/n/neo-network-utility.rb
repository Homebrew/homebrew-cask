cask "neo-network-utility" do
  version "1.1.2"
  sha256 "255240e21faf92afedce4f25add6c0e5ec113b4c9343a03bdfed80ff1bb7f967"

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
