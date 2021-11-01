cask "superproductivity" do
  version "7.6.0"
  sha256 "672bda58a7dfcbe3c198fcb9cb3d031bc900582d9ee8285a4523ce1adc7e8cb1"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
