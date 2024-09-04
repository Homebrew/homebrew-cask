cask "sipgate-clinq" do
  version "2.0.13"
  sha256 "1c24a40512e0ee1d9a9290eb8c04c8ccede6e82f527895070ae2b4997f259da1"

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
