cask "eclipse-cpp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.26.0,2022-12"
  sha256 arm:   "7a1d03ac3b19ddd37d26bb5c19b78ec77b4d7dc9a09328ce61750a3e05520054",
         intel: "3acd84accb2e913e478698d2f84e2ddee88dbb4c6a00e4ca9727cb38c3019e6e"

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
