cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.61.0"

  on_arm do
    sha256 "38b7153b6c41148f6fa13c70a4ea0d21ebde62006245751c9bffa89ce33e8512"

    depends_on macos: ">= :big_sur"
  end
  on_intel do
    sha256 "d2a4968b4a2e561243adbab2b1e083663284486e3dfe18210df7786cc687b983"

    depends_on macos: ">= :catalina"
  end

  url "https://github.com/usemotion/desktopapp/releases/download/#{version}/motion-#{version}-mac-#{arch}.zip",
      verified: "github.com/usemotion/desktopapp/"
  name "Motion"
  desc "To-do list and project management app which autoschedules tasks"
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
