cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.25.0,2022-09"
  sha256 arm:   "7c051602004d41a2f847d7cf93b1f3b37fe17f3af397df48199a76947ebcb519",
         intel: "8ef98a458433e34f0853bf84f843e00a585eaaa004592d090ef0525cd4690072"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
