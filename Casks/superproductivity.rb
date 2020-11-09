cask "superproductivity" do
  version "6.0.1"
  sha256 "8cc7940296dcb119ee7bdbf98de46ea065b012ec8606540b30f767a09bea3c07"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
