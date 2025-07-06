cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.0.5"
  sha256 arm:   "5169f91237980dee4d59ee0087e3923c1878ecf8cfc764e903d42660ec14f635",
         intel: "e285da62cf7a0662c7c21845673a41c51916d12acacaeae4fbcdc8fcbca1a773"

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
