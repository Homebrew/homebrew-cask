cask "sipgate-clinq" do
  version "1.19.1"
  sha256 "d7176c7b75d8480ff2fdde6db9d0303b9c284b8f3db68f05c3c918b7ef010527"

  url "https://s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/sipgate%20CLINQ-#{version}.zip",
      verified: "s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/"
  name "Sipgate CLINQ"
  desc "Softphone for making telephone calls over the internet"
  homepage "https://www.sipgate.de/app"

  livecheck do
    url "https://s3-eu-central-1.amazonaws.com/desktop.download.sipgate.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "sipgate CLINQ.app"

  zap trash: [
    "~/Library/Application Support/sipgate-desktop",
    "~/Library/Logs/sipgate-desktop",
    "~/Library/Preferences/com.sipgate.desktop.plist",
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
  ]
end
