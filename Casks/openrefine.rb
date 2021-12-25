cask "openrefine" do
  version "3.5.1"
  sha256 "d156d8a28df2aa90f3b616c709be0038ebd524c9f28a193b7d2dce29c5907460"

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
