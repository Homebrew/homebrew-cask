cask "superproductivity" do
  version "7.5.2"
  sha256 "b5d59609e876dfafadcacc072641c3a0a4a61d86e2c0f4a73f01b4d95f215d81"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
