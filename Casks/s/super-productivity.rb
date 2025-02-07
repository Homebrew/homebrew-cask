cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "11.1.3"
  sha256 arm:   "145232e260ee62cb130f790f83be832ef9859d55b49255d88887e49568e8f001",
         intel: "b09396f12d156540864331bcb7b6c0f1a305ebcf2a6e1c5556d5876a06911f46"

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
