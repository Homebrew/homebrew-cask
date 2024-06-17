cask "ringcentral" do
  arch arm: "-arm64"

  version "24.2.280"
  sha256 arm:   "5d3193e7bea41b114b09a9ef49bbc0813632cc4939b23e3fb862bc7c1834f327",
         intel: "1a2e8ec8544a66b09ed1df2e4580624e4b4c4c789648b19836e9d5921ca214a1"

  url "https://app.ringcentral.com/download/RingCentral-#{version}#{arch}.zip"
  name "RingCentral"
  desc "Team messaging, video meetings, and business phone"
  homepage "https://www.ringcentral.com/download.html"

  livecheck do
    url "https://app.ringcentral.com/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RingCentral.app"

  uninstall quit: "RingCentral"

  zap trash: [
        "~/Library/Application Support/RingCentral",
        "~/Library/Logs/RingCentral",
        "~/Library/Preferences/com.ringcentral.glip.plist",
        "~/Library/Saved Application State/com.ringcentral.glip.savedState",
      ],
      rmdir: "~/Documents/RingCentral"
end
