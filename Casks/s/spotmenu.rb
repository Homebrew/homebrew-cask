cask "spotmenu" do
  version "2.3.0"
  sha256 "00394a4ce7413e9fbb8d9df11c0154dde011a74fc1b013f4a9e613883c2dcb8c"

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.app.zip"
  name "SpotMenu"
  desc "Spotify and iTunes in the menu bar"
  homepage "https://github.com/kmikiy/SpotMenu"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :ventura"

  app "SpotMenu.app"

  uninstall quit:       "com.github.kmikiy.SpotMenu",
            login_item: "SpotMenu"

  zap trash: [
    "~/Library/Application Scripts/com.github.kmikiy.SpotMenu",
    "~/Library/Application Support/com.github.kmikiy.SpotMenu",
    "~/Library/Group Containers/com.github.kmikiy.SpotMenu",
    "~/Library/Preferences/com.github.kmikiy.SpotMenu.plist",
  ]
end
