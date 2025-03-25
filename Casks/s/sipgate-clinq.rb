cask "sipgate-clinq" do
  version "2.7.1"
  sha256 "3ee129ad11dc84548931d2b6c5d862daad3898400a6474de60e5438db8effd10"

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
