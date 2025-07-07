cask "spotmenu" do
  version "2.1.1"
  sha256 "f6b395763f07324e3736f973515f66be1ab92048a0fadb6cf1c40b30eece3fa1"

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.app.zip"
  name "SpotMenu"
  desc "Spotify and iTunes in the menu bar"
  homepage "https://github.com/kmikiy/SpotMenu"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

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
