cask "natron" do
  version "2.3.15"
  sha256 "9ac24bb154aea1d65813c2a8451237f02b77dd68a39619c91a671ab897eebde9"

  # github.com/NatronGitHub/Natron/ was verified as official when first introduced to the cask
  url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-OSX-64.dmg"
  appcast "https://github.com/NatronGitHub/Natron/releases.atom"
  name "Natron"
  desc "Open-source node-graph based video compositing software"
  homepage "https://NatronGitHub.github.io/"

  app "Natron.app"
end
