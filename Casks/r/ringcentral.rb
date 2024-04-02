cask "ringcentral" do
  arch arm: "-arm64"

  version "24.1.32"
  sha256 arm:   "6c88fa9a4420a0f5399d43f8499af2f8282fdc5b0858b85059430da6d931328d",
         intel: "17a63e54e8ce04590fa65a39f9ed11f50c984a0bcef8b99363ac4a2355829cca"

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
