cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10152"
  sha256 arm:   "b701f98339af8c75528642125c6f767093cc6347f6720c6d400db4468347086b",
         intel: "2fbd5c430b25c6a8edf6d214b230106fc3a90fdef59ab3da972707415fb36ef6"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
