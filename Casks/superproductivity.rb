cask "superproductivity" do
  version "7.9.2"
  sha256 "1c44edec59354fe97254bcee706215c0221fabde289f98abef7757e4a8324a04"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
