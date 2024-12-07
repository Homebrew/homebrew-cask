cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.34.0,2024-12"
  sha256 arm:   "f1fb1c36a7c3632778ad2810cf6ae3c28bcfb4174e796164a7753999dd90afe9",
         intel: "8e0a17a4aa69876290b951e137b663315b62034e42aed0447faf1daec6480030"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.java.plist",
    "~/Library/Saved Application State/epp.package.java.savedState",
  ]
end
