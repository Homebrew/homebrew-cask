cask "superproductivity" do
  version "7.9.1"
  sha256 "b49bd417d918168565f68426210a5b824470ba979165a772cf0976b5d61f2520"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
