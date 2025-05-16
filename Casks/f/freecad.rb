cask "freecad" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.1"
  sha256 arm:   "38608bbf63140e0eb102a43708a19482234b9f97e447b140e945680777c43393",
         intel: "8ddfde6700b6aee3d6296886ead72b6607281b151abaecf662ac6b12c8f0d8c2"

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD_#{version}-conda-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between the release being created
  # and the homepage being updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "FreeCAD.app"

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
    "~/Library/Preferences/FreeCAD",
  ]
end
