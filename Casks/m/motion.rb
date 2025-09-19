cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.113.0"
  sha256 arm:   "634e05ff872743e51cfe6291ad9a998feace72cadaaca02457b44c271f6cae3d",
         intel: "31663eb14727084f2cc13133bdf0d6525fc079747d0df1c5d2ba1f612f0c4a98"

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
