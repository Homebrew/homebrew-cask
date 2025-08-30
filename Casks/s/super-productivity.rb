cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.4.1"
  sha256 arm:   "6358998ed9061aefd31cb78e5aa1360bc84ad7a084dda5563400a6b0adacd0d9",
         intel: "2199ecbb5bed8915a2fdec677eef6ac2c538aa3b9a47d21479f7fdb3d6174b64"

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
