cask "openrefine" do
  version "3.8.5"
  sha256 "73344bb6905b9d46941607fe38f21f956ad26064583cf4c60abaf109f3ba6d5b"

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

  caveats do
    requires_rosetta
  end
end
