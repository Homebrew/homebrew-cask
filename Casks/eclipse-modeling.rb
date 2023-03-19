cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.27.0,2023-03"
  sha256 arm:   "0d1e9ca35904c792f8693938de4fcda22d6a0b5846cad83c9da4f99d66b712a4",
         intel: "9cd6112209fadac48467fe55139a84f93982cd4f8fdf468850db4a083528c8ac"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-modeling-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
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
