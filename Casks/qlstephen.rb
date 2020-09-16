cask "qlstephen" do
  version "1.5.1"
  sha256 "1f4a6104687d8c6479316dea37a88eb1a94875b0814744b9dc307492eb259c04"

  # github.com/whomwah/qlstephen/ was verified as official when first introduced to the cask
  url "https://github.com/whomwah/qlstephen/releases/download/#{version}/QLStephen.qlgenerator.#{version}.zip"
  appcast "https://github.com/whomwah/qlstephen/releases.atom"
  name "QLStephen"
  homepage "https://whomwah.github.io/qlstephen/"

  qlplugin "QLStephen.qlgenerator"
end
