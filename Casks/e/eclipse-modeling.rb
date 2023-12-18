cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,2023-12"
  sha256 arm:   "e0882780b6ac2067a56067d739be7180d30818ae41b8044407f5a1fb84606234",
         intel: "f6d5d80a52675773bbb57c2e8496dd2c32de9cf76ff85b696cbb70c76794275d"

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
