cask "sipgate-clinq" do
  version "2.0.4"
  sha256 "2a34624b36bd3f0e7b7b87bddaf15c8b3323f1b0de07643fcc672d90287883d9"

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
