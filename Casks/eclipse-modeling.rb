cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.26.0,2022-12"
  sha256 arm:   "44dce5e6a6919cc78fdf279e008bc1a0fa9ba4eecb66751055fe9615e353cd72",
         intel: "45e707082723e5fccecfc227f2326f0d1207437b35868947cd65988f0c6a61e8"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-modeling-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse Modeling Tools"
  desc "Tools and runtimes for building model-based applications"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"
end
