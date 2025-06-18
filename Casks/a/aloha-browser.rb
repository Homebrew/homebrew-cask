cask "aloha-browser" do
  arch arm: "setupArm64", intel: "setup64"

  version :latest
  sha256 :no_check

  url "https://alohabrowser.app/pc/download/aloha_#{arch}.dmg"
  name "Aloha Browser"
  desc "Web browser focused on privacy"
  homepage "https://alohabrowser.app/"

  depends_on macos: ">= :big_sur"

  app "Aloha.app"

  zap trash: [
    "~/Library/Application Scripts/com.alohabrowser.alohabrowser",
    "~/Library/Application Support/Aloha",
    "~/Library/Caches/Aloha Mobile",
    "~/Library/Caches/Aloha",
    "~/Library/Group Containers/com.alohabrowser.alohabrowser",
    "~/Library/Preferences/com.alohabrowser.alohabrowser.plist",
  ]
end
