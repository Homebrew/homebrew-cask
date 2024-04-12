cask "ringcentral" do
  arch arm: "-arm64"

  version "24.1.33"
  sha256 arm:   "f88029f1990402d9049757170eb5d72867e8b2d2ca5754fa3770ce2aff05efae",
         intel: "ec9d425657eacf3c53e7d0b760d5917cf0fb38c76eed332b72bf23cd9451c7bf"

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
