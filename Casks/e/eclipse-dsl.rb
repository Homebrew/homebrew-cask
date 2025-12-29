cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,2025-12"
  sha256 arm:   "28bb310bce54f0076d2862225b8704091c84c370ac3b125f0f0f444a3584ea1a",
         intel: "6b3ef2888a468edef769dbf43f7050170a629ea4315d5e6a15f1ccb3afe43473"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-dsl-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java and DSL Developers"
  desc "Eclipse IDE for Java and DSL developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse DSL.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.dsl.plist",
  ]
end
