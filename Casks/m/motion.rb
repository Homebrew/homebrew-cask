cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.114.0"
  sha256 arm:   "7c0c8fa9aebc9219d9ba014a82885fe10cba07f29e8f85f2f49f8954d0f0dd87",
         intel: "a0ccb618a6dbed56d06594e2525dd840bb6c4612a2703e89677405fe672de38c"

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
