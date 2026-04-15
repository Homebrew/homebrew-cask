cask "freecad" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "c3fcc95c1dae309e7971d04b32aa4b3feb326d21652f46848ac2d420b3887880",
         intel: "bcbe4c74abb454a05728d84185a64d9d191a8f2c53d3a58dc2e33be597e3cf36"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version}/FreeCAD_#{version}-macOS-#{arch}-py311.dmg",
      verified: "github.com/FreeCAD/FreeCAD/"
  name "FreeCAD"
  desc "3D parametric modeller"
  homepage "https://www.freecad.org/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between when the release is created
  # and the homepage is updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end

  app "FreeCAD.app"

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
    "~/Library/Preferences/FreeCAD",
  ]
end
