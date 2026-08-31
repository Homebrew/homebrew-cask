cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.21.2"
  sha256 arm:   "c9a256f91be180391ee25b05ca0c429871b9674184b593cba685b2c11de18b12",
         intel: "b94c8e289a9b03bd2ef6f69eeee171be7ac592f23f1394c346e41834c2811459"

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
