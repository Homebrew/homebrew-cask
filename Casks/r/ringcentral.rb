cask "ringcentral" do
  arch arm: "-arm64"

  version "24.3.252"
  sha256 arm:   "5c3f561af1d3e0cc2d08efa6e3f9a1253690e56088887d6cc5cd24523a6e2679",
         intel: "cb8b0839c6e48b21cac85fa6616a1fa7109e225da3f63f8d9fee02ddb3e12d0f"

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
