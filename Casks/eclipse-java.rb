cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.24.0,2022-06"
  sha256 arm:   "387983833dd7f8296e4bcdba063258a6c9194dba2cb0ed6cddf4b4157369b445",
         intel: "46636f6d9e82394412cc6660358c84200499fa79c89dda52c77c39e81a9592f7"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
