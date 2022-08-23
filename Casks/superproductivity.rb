cask "superproductivity" do
  arch arm: "-arm64"

  version "7.11.5"
  sha256 arm:   "67665f0d3786c6d3be8705af67f1ffcfc987b38f61415f07ea940b1e95e8dd47",
         intel: "5c6b50db6109939ad1f902c4d2123aae81bce0299095ebc31249e9e6ca452a6f"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}#{arch}.dmg",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
    "~/Library/Preferences/com.super-productivity.app.plist",
    "~/Library/Saved Application State/com.super-productivity.app.savedState",
  ]
end
