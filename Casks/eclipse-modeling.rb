cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-06"
  sha256 arm:   "b01b2b21bbfa62554e3486467353713e747245b6492daf60eb769b8919f08c71",
         intel: "ca244f3dff376858e8a5ca01cd4532973c2e8d195d78e7a2ab666294193eed6f"

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
