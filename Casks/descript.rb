cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "41.1.1-release.20220616.4"

  if Hardware::CPU.intel?
    sha256 "08ec6b8b69f7e0aee610462a6b068afeb729dd1fea439978da11195f42993bf1"
  else
    sha256 "3e48a82edec40b0dd0969930edbfc7ec792d45c86ddd9b87cc58459aacf54fde"
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
