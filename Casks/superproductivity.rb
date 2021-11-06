cask "superproductivity" do
  version "7.7.0"
  sha256 "c1b8de8717056e7db8532b001f8388108dbddd8e222ad57ea7362dbf3fe06278"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
