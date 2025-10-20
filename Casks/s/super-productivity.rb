cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.0.0"
  sha256 arm:   "15f82b5f0edbe7c514733d5acec5ec46765d340530f45cddae34e4edb1501d7c",
         intel: "957b31d6adb3d4b4494987cd2abebbf6387bb2ecb45668170bc65cb4a85bfa69"

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
