cask "scihubeva" do
  version "5.1.1"
  sha256 "23d51b7f9984e33f46c16f4fe8baebd9b2d7c3b5fe5a9de2f1f9816ccf7235f7"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-v#{version}.dmg"
  name "SciHubEVA"
  desc "Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"
end
