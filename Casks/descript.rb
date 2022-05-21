cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "39.1.1-release.20220513.7"

  if Hardware::CPU.intel?
    sha256 "947f490c34d08ec22167ff745b0626c63ec4603b0e53fc299d930afab749a99a"
  else
    sha256 "1ed37dc1686273866f5266d81fef0a2f0032632efa5356fd9346ff6c76ca7c29"
  end

  url "https://electron.descript.com/Descript-#{version}#{arch}.dmg"
  name "Descript"
  desc "Audio and video editor"
  homepage "https://www.descript.com/"

  livecheck do
    url "https://electron.descript.com/master-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Descript.app"

  zap trash: [
    "~/Library/Application Support/Descript",
    "~/Library/Caches/com.descript.beachcube",
    "~/Library/Caches/com.descript.beachcube.ShipIt",
    "~/Library/Caches/com.descript.Descript-Installer",
    "~/Library/Preferences/com.descript.beachcube.plist",
    "~/Library/Preferences/com.descript.Descript-Installer.plist",
    "~/Library/Preferences/com.descript.ScreenRecorder.plist",
    "~/Library/Saved Application State/com.descript.beachcube.savedState",
    "~/Library/Saved Application State/com.descript.Descript-Installer.savedState",
  ]
end
