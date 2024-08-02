cask "meta-quest-developer-hub" do
  version "4.8.0"
  sha256 "c32c569b0d2a803d122de2a2a281df041d368586aa7c61d18fda9821622ed89b"

  url "https://www.oculus.com/x2asset/electron-apps/odh/d7fbf9110e4200cae75755db8cff6d5f/Meta%20Quest%20Developer%20Hub-#{version}.zip"
  name "meta-quest-developer-hub"
  desc "VR development tool"
  homepage "https://developer.oculus.com/meta-quest-developer-hub/"

  livecheck do
    url "https://www.oculus.com/electron-updates/mqdh/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Meta Quest Developer Hub.app"

  # No zap stanza required

  caveats do
    license "https://developer.oculus.com/licenses/oculussdk"
  end
end
