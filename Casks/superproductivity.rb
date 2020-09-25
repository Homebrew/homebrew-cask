cask "superproductivity" do
  version "5.9.0"
  sha256 "a71c06bcf0dd00b913fe2f78cce95510482d110d7d242bebc1694ee3c71c097e"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
