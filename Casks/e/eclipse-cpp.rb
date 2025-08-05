cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.36.0,2025-06"
  sha256 arm:   "a055c7ccacb226a502be4ab5bbec408f50ad7f1dcfcd4fcab251c42488cbffba",
         intel: "37828ba84430b2ed7c58b4608e15e9a80e6c00c899e6ceff275f62ec72502367"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-cpp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  desc "Eclipse IDE for C and C++ developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.cpp.plist",
    "~/Library/Saved Application State/epp.package.cpp.savedState",
  ]
end
