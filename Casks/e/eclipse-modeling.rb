cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-09"
  sha256 arm:   "5ad2dd4243a05facd56bee42aeac7332c184ecf306c33e72b83d57776b5b1d06",
         intel: "4897c5c1f971341165e001016dbb96733899ed2f23a086cdb2a08115939b4fa8"

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
