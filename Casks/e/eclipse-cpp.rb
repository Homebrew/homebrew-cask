cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.29.0,2023-09"
  sha256 arm:   "f98a6c822aa6025be9e993500a3264e9e93e65938f52e3a3f5414295ba635fc2",
         intel: "66a3578689e5d0252935294cd40255a06cb8cc4e95c82ea849d5bea46b734e24"

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
