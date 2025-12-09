cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.5.5"
  sha256 arm:   "4b9fab15df8e6bb63fc48ce36d4eb2e6e7e2e19d5cd84988e653171a938d2022",
         intel: "767b57b01c5003a228698976011e616030a832579b627ce2e371756d224943df"

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
