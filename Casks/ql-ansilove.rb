cask "ql-ansilove" do
  version "1.0-beta"
  sha256 "7f01e90c7856dac2d93c87876f0739baa61702a58d50aedb24142e6091ac4c67"

  url "https://github.com/ansilove/QLAnsilove/releases/download/v#{version}/QLAnsilove-#{version}.zip"
  appcast "https://github.com/ansilove/QLAnsilove/releases.atom"
  name "QLAnsilove"
  homepage "https://github.com/ansilove/QLAnsilove"

  qlplugin "QLAnsilove.qlgenerator"
end
