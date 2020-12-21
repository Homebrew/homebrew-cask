cask "klogg" do
  version "20.12.0.810"
  sha256 "9500f238fd9e1576ce53d772ba2359ea6c78c39860991e31c9f604996b1df935"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX.dmg"
  appcast "https://github.com/variar/klogg/releases.atom"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  app "klogg.app"
end
