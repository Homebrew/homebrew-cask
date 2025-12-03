cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.67.6"
  sha256 arm:   "f97adced8553e769d42c6f975f52f59bcd41cebd308fe601a58d3f1e1ae21129",
         intel: "68ec51ac89a21b32ab90f62ad730c7f7b77e3ee1f37ece9cf7b43b5328ddc7cf"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
