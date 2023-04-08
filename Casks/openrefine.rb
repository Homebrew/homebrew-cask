cask "openrefine" do
  version "3.7.2"
  sha256 "62d0a809ed30a4612e8817a63f15025dda110cec5e0f6b1546343090a0ab57f0"

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
