cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.68.0"
  sha256 arm:   "eb5c3dff2cfe7cf4b3aeab3833c6e08b9574819c7eb60c8ed6dab65f191f7b33",
         intel: "cca6a52a34bd01d88232ef2802c0969aa9e2d00a2d53a637d29caab831a6bc14"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

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

  app "Motion.app"

  zap trash: [
    "~/Library/Application Support/Motion",
    "~/Library/HTTPStorages/com.electron.motion*",
    "~/Library/Logs/Motion",
    "~/Library/Preferences/com.electron.motion.plist",
    "~/Library/Saved Application State/com.electron.motion.savedState",
  ]
end
