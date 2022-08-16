cask "descript" do
  arch arm: "-arm64"

  version "46.1.0-release.20220813.3"

  on_intel do
    sha256 "b6396707bb77868b45403f7d4a2618b59698c810ff18d92b5f2ebef51b9d73ac"
  end
  on_arm do
    sha256 "51a341379af0a3317b644ec1c51ba835a2d766d5c9bae5a5ed27f94cc4050e76"
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
