cask "ringcentral" do
  arch arm: "-arm64"

  version "24.1.16"
  sha256 arm:   "fe0fcdda5fa3365d134a78cbc73e7caaf92e053817f4b5b754a76d3bd6cce1ee",
         intel: "d502be32f247e1c77f13c3d68bbef07e2f94d0767160ba1c6008fe4a260568ad"

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
