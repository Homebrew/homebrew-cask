cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-03"
  sha256 arm:   "14410b2bcbc0ae105de358865caf2cf733afef42b9abfbd2abea97a56b54c868",
         intel: "7f5acc6826b3a64d673a5e85a6d769cd7cfd128ccc7dc0df4d6aac67802c8d5a"

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
