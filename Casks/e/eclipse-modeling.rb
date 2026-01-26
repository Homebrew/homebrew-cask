cask "eclipse-modeling" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,2025-12"
  sha256 arm:   "ca0850b9267ce648e80ac2b19ddb2cef1bc9f8c2a6c3b61b2e8bdd16c20a3a61",
         intel: "90d704e9b7f3817c14d20320f811dceabc8dfd31228410d079cf915c91ac01a1"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-modeling-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&mirror_id=1"
  name "Eclipse Modeling Tools"
  desc "Tools and runtimes for building model-based applications"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.modeling.plist",
  ]
end
