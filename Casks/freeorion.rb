cask "freeorion" do
  version "0.4.10.1,2020-09-25.39cfe10"
  sha256 "ca31a2a35878df0059589cf88f50cd1168d5f493b8ccbcaece88ae3a2e5331a7"

  # github.com/freeorion/ was verified as official when first introduced to the cask
  url "https://github.com/freeorion/freeorion/releases/download/v#{version.before_comma}/FreeOrion_v#{version.before_comma}_#{version.after_comma}_MacOSX_10.9.dmg"
  appcast "https://github.com/freeorion/freeorion/releases.atom"
  name "FreeOrion"
  homepage "https://freeorion.org/"

  app "FreeOrion.app"
end
