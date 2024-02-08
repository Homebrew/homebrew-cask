cask "clinq" do
  version "1.11.1"
  sha256 "76ba427472ed7d5d846bcf1785991c06a24d0e49c0566605b9467517df4285b7"

  url "https://s3-eu-central-1.amazonaws.com/desktop.download.clinq.com/CLINQ-#{version}.zip",
      verified: "s3-eu-central-1.amazonaws.com/desktop.download.clinq.com/"
  name "CLINQ"
  desc "Softphone for making telephone calls over the internet"
  homepage "https://clinq.com/"

  livecheck do
    url "https://s3-eu-central-1.amazonaws.com/desktop.download.clinq.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CLINQ.app"

  zap trash: [
    "~/Library/Application Support/clinq-desktop",
    "~/Library/Logs/clinq-desktop",
    "~/Library/Preferences/com.clinq.desktop.plist",
    "~/Library/Saved Application State/com.clinq.desktop.savedState",
  ]
end
