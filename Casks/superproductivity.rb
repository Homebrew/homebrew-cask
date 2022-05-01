cask "superproductivity" do
  version "7.11.5"
  sha256 "2d857fd6813f2624991ca93e6d672156c417a139e1ed6249baa9b92fc3ea4373"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"

  zap trash: [
    "~/Library/Application Support/superProductivity",
    "~/Library/Logs/superProductivity",
  ]
end
