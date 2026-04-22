cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "18.2.8"
  sha256 arm:   "d064243ef3203bc83fb1aaeb6a7e439ead5ad86db21646958095454385500dd7",
         intel: "dd2808ca2168f2d5467edd5fdf16b906bd1d0260f1f70be6a8e64f6879bbffaf"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Super Productivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
