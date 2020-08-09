cask "superproductivity" do
  version "5.5.7"
  sha256 "71ef2a8abc2a02602ecd36bf7799ead71382da46de5aaf28c3a62bfe3905560e"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
