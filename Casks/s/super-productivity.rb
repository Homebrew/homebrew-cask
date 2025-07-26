cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "14.2.4"
  sha256 arm:   "1c2d67dff9747710cb855cbb8bbcbab1cd39f20729fcfbb0649ec0900a1b9b11",
         intel: "4e7082c1621a2532963bded345a33a0ccf769486280d2c1ba73443f5e2a47513"

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
