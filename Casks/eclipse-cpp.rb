cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-06"
  sha256 arm:   "ae7933d155042386658eb25a685716a52bb3f2a584b6038ce3fe86baca93cbb2",
         intel: "53eaf5cb6bc9ef66bdd69c8b6460e3b0fb3aaddf4138581cc72e08f7cae2d8d9"

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
