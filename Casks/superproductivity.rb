cask "superproductivity" do
  version "5.5.4"
  sha256 "ffc51709953dadca7e8e442b9bbe3dccf9782a9d7b538c5efb70c31196a5fb73"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
