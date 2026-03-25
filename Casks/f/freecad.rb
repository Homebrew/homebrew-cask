cask "freecad" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "52b069f86471ccf4fdd535c42cd9b74b9a8079a7abfd0f51ff19b0a30c6d795b",
         intel: "9eb363a4bd2e7c718713635a7aecb29c3550302192f89517a157ba07d486da4b"

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
