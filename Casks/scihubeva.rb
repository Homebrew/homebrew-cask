cask "scihubeva" do
  version "5.1.0"
  sha256 "4909a43c0a4b97db27b7499e4a37317a94dc1ceaa26093bd82f8c154e81a17ed"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-v#{version}.dmg"
  name "SciHubEVA"
  desc "Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
