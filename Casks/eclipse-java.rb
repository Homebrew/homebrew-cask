cask "eclipse-java" do
  version "4.24.0,2022-06"

  if Hardware::CPU.intel?
    sha256 "46636f6d9e82394412cc6660358c84200499fa79c89dda52c77c39e81a9592f7"
  else
    sha256 "387983833dd7f8296e4bcdba063258a6c9194dba2cb0ed6cddf4b4157369b445"
  end

  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

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
