cask "superproductivity" do
  version "6.1.2"
  sha256 "89828c5b5177f19d06c8fc8b9840aba69a53ef3a4046df63396cb39505fad341"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
