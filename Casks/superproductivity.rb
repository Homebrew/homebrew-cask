cask "superproductivity" do
  version "6.0.0"
  sha256 "8f6022ccc2ade5759dd769e4998a712f704f4857f975bc1e136a9f80c079c5af"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
