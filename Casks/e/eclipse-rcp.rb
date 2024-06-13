cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-06"
  sha256 arm:   "cce2b728ac20830e73d4f13032fafa45f80c949cc487f643740678c876e7af3a",
         intel: "e719ec5ac3c3f08fa287fc209ab2878899926d559cd7bb72d6960df3db198bc7"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.rcp.plist",
  ]
end
