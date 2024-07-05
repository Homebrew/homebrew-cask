cask "ringcentral" do
  arch arm: "-arm64"

  version "24.2.304"
  sha256 arm:   "c5f8111043f7cd9741bac04f6a520b3d6e4c91a3587f4c67dc016ee4b9bcc22e",
         intel: "f67bb736f52805c5226f31ddf24d798e0ddbdb45051dc8293f3a6ab8d5f847a2"

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
