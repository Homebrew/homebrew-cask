cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "15.0.1"
  sha256 arm:   "d2eaf5eca96ffadcb9b9874ea2d25ebbe6b7267cbebdfcbd48c1ab3476b77e0f",
         intel: "cc840fb022b9c1a8f29a8ee446965edbcb0ebec880e9116b8b65657359bd6f92"

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
