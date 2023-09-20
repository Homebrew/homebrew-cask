cask "clinq" do
  version :latest
  sha256 :no_check

  url "https://desktop.download.clinq.com/clinq-desktop.dmg"
  name "Clinq"
  desc "Softphone"
  homepage "https://clinq.com/"

  depends_on macos: ">= :high_sierra"

  app "CLINQ.app"

  zap trash: [
    "~/Library/Application Support/clinq-desktop/",
    "~/Library/Saved Application State/com.clinq.desktop.savedState",
  ]
end
