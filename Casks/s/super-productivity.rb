cask "super-productivity" do
  arch arm: "arm64", intel: "x64"

  version "16.5.2"
  sha256 arm:   "6db015fb49acdf1ca404ed4624d874ef49ae42184059cb6d131be96c15e0fe19",
         intel: "cae2681c7760e41d6c185f9e46d5cde88da08bbb197ba234dfdbb7ca39c918b0"

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
