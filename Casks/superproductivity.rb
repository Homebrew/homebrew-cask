cask "superproductivity" do
  version "5.6.5"
  sha256 "12294e5bf4654193f53553d2b3a4c81d09967da71db3a3854b53a7587e0f477c"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
