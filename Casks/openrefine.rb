cask "openrefine" do
  version "3.5.2"
  sha256 "9338a2dd9473d05d9ca0312ad3725ab87afdb282363dabe6ce8bd5a265868448"

  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg",
      verified: "github.com/OpenRefine/OpenRefine/"
  name "OpenRefine"
  desc "Tool for working with messy data (previously Google Refine)"
  homepage "https://openrefine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenRefine.app"
end
