cask "invizi" do
  version "1.0.0"
  sha256 "217cdf175aa005899483727b24f3a8f8c2406550c5eb22cafe017ff3066112c6"

  # github.com/invizi/invizi was verified as official when first introduced to the cask
  url "https://github.com/invizi/invizi/releases/download/v#{version}/Invizi-#{version}.dmg"
  appcast "https://github.com/invizi/invizi/releases.atom"
  name "Invizi"
  desc "Encrypted, free & open source cryptocurrency tracker"
  homepage "https://invizi.co/"

  app "Invizi.app"
end
