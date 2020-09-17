cask "superproductivity" do
  version "5.7.0"
  sha256 "c3178e0cae88940b2302c8370009c41db4e915fd4d85fcdb9381273c128fcf45"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
