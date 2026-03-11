cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.39,2026-03"
  sha256 arm:   "6da9e57fa68c505b6f2be3e8ddfcbf8ac25bfef3c8b54aa0872fa77497a0e8a3",
         intel: "aa9cf5771f754d3c7d580725156d65e119123c9207a0abb8f659aae087961490"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-cpp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  desc "Eclipse IDE for C and C++ developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.cpp.plist",
    "~/Library/Saved Application State/epp.package.cpp.savedState",
  ]
end
