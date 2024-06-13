cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-06"
  sha256 arm:   "ef2d485b7ceba17ea31f0ffea251f7569d812e27ceaa2ff47d9b5ef74a7eed2a",
         intel: "d39581d35d1d83823db1937c4ec1c817451fa4b9c9eebaa02f68dc57aa38585a"

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
