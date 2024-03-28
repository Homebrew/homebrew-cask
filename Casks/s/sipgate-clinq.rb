cask "sipgate-clinq" do
  version "1.17.1"
  sha256 "c7f98a7617779339f24dd691b40ca5aa88724e674a15b20e44650b821bd0e859"

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
