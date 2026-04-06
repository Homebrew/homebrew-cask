cask "glowedge" do
  version "1.0.0"
  sha256 "17e81fa8f734095c64d27f29f1225d9861d551232d96f8f43de5d6b5ea18fc51"

  url "https://github.com/cataWalter/GlowEdge/releases/download/v#{version}/GlowEdge.zip"
  name "GlowEdge"
  desc "On-Demand Edge Light for macOS"
  homepage "https://github.com/cataWalter/GlowEdge"

  app "GlowEdge.app"
end