cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.24.0,2022-06"
  sha256 arm:   "b68caf64918b286858294c88802a0d333515245bf8f45c0fa0cb4297fc771332",
         intel: "5e90b3bb9da55e77d0d5c3f87c28535250a67d9e9707c3fce9dd1186bffb6a8d"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-cpp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  desc "Eclipse IDE for C and C++ developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"
end
