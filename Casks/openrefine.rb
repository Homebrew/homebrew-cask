cask "openrefine" do
  version "3.5.0"
  sha256 "4c0c29819c0592c020d8df5a26a3c3458c40caadeb5fca70a453dd5f97f805c1"

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
