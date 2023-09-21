cask "clinq" do
  version "1.6.13"
  sha256 :no_check

  url "https://desktop.download.clinq.com/clinq-desktop.dmg"
  name "CLINQ"
  desc "softphone for making telephone calls over the internet"
  homepage "https://clinq.com/download/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "CLINQ.app"

  zap trash: [
    "~/Library/Application Support/clinq-desktop/",
    "~/Library/Saved Application State/com.clinq.desktop.savedState",
  ]
end
