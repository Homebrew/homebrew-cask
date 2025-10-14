cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.2.16"
  sha256 arm:   "394280a087683e4c040f2f8bc90dc55d45980ace6230596fdbb58aa83d1386c3",
         intel: "10580747cef63047a736688b2e1c9cfeaf2acff97dfdf72f58c99222fda53fbe"

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
