cask "motion" do
  arch arm: "aarch64", intel: "amd64"

  version "0.117.0"
  sha256 arm:   "6a74ed0749a5089f1303d99fa257cc28e05be1a82c26d7b9fcf37a13902fe199",
         intel: "b38c6f7050e3d69ca3b4bcf525ce3ac5c14a638990a95899de245df598ae2280"

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
