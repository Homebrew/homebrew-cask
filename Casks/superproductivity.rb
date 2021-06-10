cask "superproductivity" do
  version "7.0.1"
  sha256 "01b9762fd5ea661459def9d36960948a7f2d3ee2e1bd7f8573975d66520798c3"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
