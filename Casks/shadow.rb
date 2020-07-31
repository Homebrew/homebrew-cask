cask "shadow" do
  version :latest
  sha256 :no_check

  url "https://update.shadow.tech/launcher/prod/mac/Shadow.dmg"
  name "Shadow"
  homepage "https://shadow.tech/"

  app "Shadow.app"

  zap trash: [
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
    "~/Library/Application Support/Shadow",
  ]
end
