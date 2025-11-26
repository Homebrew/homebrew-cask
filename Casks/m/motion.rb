cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.115.0"
  sha256 arm:   "dc4464993824931954cc96520419153f78cbf2b79581d0392a75d96b200d3e36",
         intel: "eb89c0e420f0f1dbf265f47d4ff642d87498079ce06a20c69c2023c1cfcaa8ba"

  url "https://github.com/usemotion/desktopapp/releases/download/#{version}/motion-#{version}-mac-#{arch}.zip",
      verified: "github.com/usemotion/desktopapp/"
  name "Motion"
  desc "To-do list and project management app"
  homepage "https://www.usemotion.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Motion.app"

  zap trash: [
    "~/Library/Application Support/Motion",
    "~/Library/HTTPStorages/com.electron.motion*",
    "~/Library/Logs/Motion",
    "~/Library/Preferences/com.electron.motion.plist",
    "~/Library/Saved Application State/com.electron.motion.savedState",
  ]
end
