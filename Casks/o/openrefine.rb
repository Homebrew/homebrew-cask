cask "openrefine" do
  version "3.7.4"
  sha256 "262c5cbd4da5d9156d0c24422474511ee3111ffea2e9c1481e0340b127e10701"

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

  zap trash: [
    "~/Library/Application Support/OpenRefine",
    "~/Library/Saved Application State/com.google.refine.Refine.savedState",
  ]
end
