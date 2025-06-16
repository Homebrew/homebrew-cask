cask "aloha-browser" do
  version :latest
  sha256 :no_check

  on_arm do
    url "https://alohabrowser.com/pc/download/aloha_setupArm64.dmg"
  end
  on_intel do
    url "https://alohabrowser.com/pc/download/aloha_setup64.dmg"
  end

  name "Aloha Browser"
  desc "Fast, free, and full-featured web browser focused on privacy"
  homepage "https://alohabrowser.com/"

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
