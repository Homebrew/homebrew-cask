cask "superproductivity" do
  version "7.5.1"
  sha256 "ac2e10a7d57c3d920a9139a0e02a0c143d27a9ff81afd91d088a62c27c099f66"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
