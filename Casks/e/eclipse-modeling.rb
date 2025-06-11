cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.36.0,2025-06"
  sha256 arm:   "1e9a131356c918315c32dc1faec0065c9032742772570208158bb6fc7197671c",
         intel: "12e88d8e3fce342d47d4b0a9d04eb47544bfb5ca4446044361dafb78ec7366e1"

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
