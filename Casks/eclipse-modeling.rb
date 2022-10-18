cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.25.0,2022-09"
  sha256 arm:   "b7d0117339cdb52256423c22bce5b41e748e6fde5b06b8958685c7c9e809c6cd",
         intel: "9488c1c77c02f407c7bab791d00c90715dbd99a5efcb87a9893841e41d75eeae"

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
