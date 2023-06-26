cask "openrefine" do
  version "3.7.3"
  sha256 "611203417a1a922ca9cb6a4a72940800dea96e959f4a858ab66f5b7aff181487"

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
