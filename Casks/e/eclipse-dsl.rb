cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-09"
  sha256 arm:   "7e036cd496966d8b5176272df95a835e7b228fe5e9796df0ce4f33c5144daa69",
         intel: "1d6b5f8bc7682ce66624d15d53008731fdc8b58651294b57379b61cb3b05b14f"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-dsl-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java and DSL Developers"
  desc "Eclipse IDE for Java and DSL developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse DSL.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.dsl.plist",
  ]
end
