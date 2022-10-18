cask "superproductivity" do
  arch arm: "-arm64"

  version "7.12.0"
  sha256 arm:   "a4583ddbfc595286e9076b0463c7e2bf36b6711e02609f6f6894129b8c0538ac",
         intel: "d7509cf6d42a4b12902529246497d82f3eda1bddf8bf6de053bd37edc872d036"

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
