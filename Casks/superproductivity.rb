cask "superproductivity" do
  version "6.4.0"
  sha256 "eae97a8b654afbb9d90436024c572dccf0e703c2db7faf86615de860ac1355d9"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
