cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "5.0.1168.9369"
  sha256 :no_check

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/Shadow.dmg"
  name "Shadow"
  desc "Your gaming PC powered by Cloud technology"
  homepage "https://shadow.tech/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Shadow.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
