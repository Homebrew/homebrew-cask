cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.6.0"
  sha256 arm:   "8460ff346a3aff2be890591742821cf40ab0f10ec6e9e99e3b39457f0e9ca9bf",
         intel: "3422449f3ce436db05f16f517f2dab8b894e033b778a8eb50c8f518197419725"

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
