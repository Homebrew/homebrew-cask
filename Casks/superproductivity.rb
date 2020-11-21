cask "superproductivity" do
  version "6.1.1"
  sha256 "7a1e116404254e464d43ef40553b40e1ee609d7cf85e9f57fee7ea28b68ddfe7"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
