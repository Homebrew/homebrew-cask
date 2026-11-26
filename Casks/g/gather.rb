cask "gather" do
  arch arm: "-arm64"

  version "1.43.3"
  sha256 arm:   "a2a4c1cc398ec01f7c370ac1ee9ae6b9ac65fa9ce8053fdfc10abd82376adcdd",
         intel: "d67d2c566f6d8f45d5ac6658a77bcfe342ff3785be26e3dae0ed1500f5ed6bc6"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gather.gather.sfl*",
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
