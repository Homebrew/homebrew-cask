cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.69.0"
  sha256 arm:   "616d79d449b0e0bd0eaab0c1473cdd3dbbe74775402e667ac5863bddf93fbcb2",
         intel: "1efae97ab31e997c9340e0f66d7d5c44ad576b05de5a18c383a8b1baa7fdcebd"

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
