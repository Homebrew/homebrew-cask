cask "superproductivity" do
  version "7.5.0"
  sha256 "36f13959fe23f0fe45b5c758c0bdbbdf966b8d683a116ceb667609c52e73486b"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
