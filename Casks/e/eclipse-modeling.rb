cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.34.0,2024-12"
  sha256 arm:   "edd9e225fcffa440818568df90fbcfaf7b77d206ce63806f8da8c581705c186c",
         intel: "f7545b06419a11bf6cb8de6b55cb177b1cfc8d5f93d95b676c0e1647d6892900"

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
