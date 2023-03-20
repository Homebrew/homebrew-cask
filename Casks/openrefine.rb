cask "openrefine" do
  version "3.7.1"
  sha256 "68046ba4eb7d2de48d2245cf8fd5018cb4fd214348904c88b9b42c5ddeeacc60"

  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg",
      verified: "github.com/OpenRefine/OpenRefine/"
  name "OpenRefine"
  desc "Tool for working with messy data (previously Google Refine)"
  homepage "https://openrefine.org/"

  livecheck do
    url "https://github.com/OpenRefine/OpenRefine"
    strategy :github_latest
  end

  app "OpenRefine.app"
end
