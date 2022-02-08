cask "eclipse-modeling" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.22.0,2021-12"

  if Hardware::CPU.intel?
    sha256 "5a5a847d4c9bfb6df462baee4e0cc78f56e06562f5de79252071486dd589cd01"
  else
    sha256 "7558bead45bf18509f8e689fd9a4091605af2e8dd09e171b648b9e8dc3e82435"
  end

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
