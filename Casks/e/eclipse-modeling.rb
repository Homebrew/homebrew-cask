cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.35.0,2025-03"
  sha256 arm:   "33fdf585e9e870b8c44367e173eb9f741878fcd177a0ea59584951a32354561d",
         intel: "1274175cb21df56b5bda469cb3e4686e7a2d26e3c38cd725b28d26b6c707c557"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-modeling-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&mirror_id=1"
  name "Eclipse Modeling Tools"
  desc "Tools and runtimes for building model-based applications"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.modeling.plist",
  ]
end
