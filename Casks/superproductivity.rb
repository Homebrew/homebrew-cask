cask "superproductivity" do
  version "7.3.3"
  sha256 "1474e48b2936bd896db3cc7727a69ff9bce3bd669156971246898e1234eb385e"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
