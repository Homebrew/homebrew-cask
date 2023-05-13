cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.27.0,2023-03"
  sha256 arm:   "fbf88b9b83fa49d4f5407f5e22d8dca9bd3896ff3c064a2372bfed23a3e7598a",
         intel: "4b240f8d461a56354d2c27c2edaf1a221e4136732a9433efdd61525f99f138eb"

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
