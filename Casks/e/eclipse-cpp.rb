cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.33.0,2024-09"
  sha256 arm:   "d094bc3c1e4264bd97b1c833e21fe7f78d7e752b913f4bb28d48e53ce3003d66",
         intel: "ea74555920375328f02c9e8830240e16b51863b8d90c9c8b990cf65cca2729d5"

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
