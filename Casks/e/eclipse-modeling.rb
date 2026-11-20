cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.41,2026-09"
  sha256 arm:   "fe452427b98071e90a2fe6a4e4b60c52f3b32754bbde515c9dd7debaeda69796",
         intel: "f27d635d492829a69c917960e38dadb5918d467cb71f82650cc41188487fc108"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-modeling-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&mirror_id=1"
  name "Eclipse Modeling Tools"
  desc "Tools and runtimes for building model-based applications"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on :macos

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"

  uninstall quit: "epp.package.modeling"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.modeling.plist",
  ]
end
