cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.66.0"
  sha256 arm:   "be62cbc48b95da1067431eac3f75f4d6b9d6ab7d4f376a6df8517323336c0e56",
         intel: "10fbf5a2b5076cea2a53a4854d43b222e8f25fcf806f1fc9ae856e686afb4ef1"

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
