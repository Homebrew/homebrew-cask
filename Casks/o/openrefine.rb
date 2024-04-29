cask "openrefine" do
  version "3.8.0"
  sha256 "31af8ab1d005081baab5e8147068a92196f008a46f7cddc7d904fc4cf219706e"

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

  zap trash: [
    "~/Library/Application Support/OpenRefine",
    "~/Library/Saved Application State/com.google.refine.Refine.savedState",
  ]
end
