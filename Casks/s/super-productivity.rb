cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.3.3"
  sha256 arm:   "9eac327b1944eb78e9380de01afda9436cd5aaec3d0911cd2f6ebac30f02292e",
         intel: "ae54b0ab51a5e15de80efabe537ee3924af54ae7e20d65d3f4ecc0619e1b700d"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
