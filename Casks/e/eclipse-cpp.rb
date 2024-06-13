cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-06"
  sha256 arm:   "ca4470f9d658ae97ce901a541a355a0361417a5da134c26d68f72464812c3324",
         intel: "b413291ca9d0951dd366543066387254ddd358d55a4c60d8686a1e6cc3c84b22"

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
