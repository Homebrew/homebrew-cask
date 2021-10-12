cask "shadow" do
  version "5.0.1020"
  sha256 :no_check

  name "Shadow"
  desc "Your gaming PC powered by Cloud technology"
  homepage "https://shadow.tech/"

  if Hardware::CPU.intel?
    url "https://update.shadow.tech/launcher/prod/mac/x64/Shadow.dmg"
  else
    url "https://update.shadow.tech/launcher/prod/mac/arm64/Shadow.dmg"
  end

  app "Shadow.app"

  zap trash: [
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
    "~/Library/Application Support/Shadow",
  ]
end
