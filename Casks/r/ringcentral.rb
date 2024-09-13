cask "ringcentral" do
  arch arm: "-arm64"

  version "24.3.260"
  sha256 arm:   "9638971cbcc056e19fd9e48416385f29e8589fa0b9bbbdc6f58bc77ab65c875a",
         intel: "7d335302667b83d82779d932ac7dad6afee4ff53c05bcbc6ea55165cd9d17ed4"

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
