cask "superproductivity" do
  arch arm: "-arm64"

  version "8.0.1"
  sha256 arm:   "1d8e3f3e7bf7730dd1ac31ad7116c5a61dceaa276eb94e826b3f24bb3cc75c60",
         intel: "e456365f22e2e066338f43b51bb5896de044642bb30c90737475409b69d233a5"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
