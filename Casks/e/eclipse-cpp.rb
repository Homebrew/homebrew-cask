cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.40,2026-06"
  sha256 arm:   "443a26d0644855604e7102690d97c96b5dfe7ead93cd1858be3e203ab8a96e18",
         intel: "bb1209d45d91346086b723b41733a6c42c0e8aba62f58850210154461f0ec064"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-cpp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  desc "Eclipse IDE for C and C++ developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: :big_sur

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.cpp.plist",
    "~/Library/Saved Application State/epp.package.cpp.savedState",
  ]
end
