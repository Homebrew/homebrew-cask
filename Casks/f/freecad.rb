cask "freecad" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "ec287b388cb94876214678b8f9f586166261883e2591df274a52b19b73d48183",
         intel: "48a38173a7181bd24f647d162488284a94e5cbf8678b15de8bbe41d5dbad4bd4"

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
