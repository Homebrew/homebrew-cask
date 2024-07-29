cask "ringcentral" do
  arch arm: "-arm64"

  version "24.3.101"
  sha256 arm:   "b299f26e0aede444cc53c24dc69a3638df296553ac642aa289647b557cb2fad9",
         intel: "336998e8085e7dbb8be7456c7c0675fff7582e277e6f4310b14214900fdcdc6c"

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
