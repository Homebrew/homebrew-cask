cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.39,2026-03"
  sha256 arm:   "94244c10f53c97595102f0032597576ce48bf3e62cfd7be793686a4842ba372f",
         intel: "b39fa351ef3622773785ffcde4db97444925e1d677e1d88fb38531b4e70edabf"

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
