cask "superproductivity" do
  version "7.8.0"
  sha256 "fc377928219c6112d7715d982df66aad823228db575da46acace0dc978da56c4"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
