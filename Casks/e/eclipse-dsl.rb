cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.34.0,2024-12"
  sha256 arm:   "45ace7eceeee25f82666113000fd438d6482179d5da5f6a1193942aa38885d10",
         intel: "eb6cfe62e68f8b8e7664dc7bc1625954adc05b6e714096cd5fd3ed7944799ec2"

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
