cask "eclipse-platform" do
  version "4.17,202009021800"
  sha256 "6900fd621b1525853cc24dec29f1dbd5b02f6427a3e2516970a0c532756d7b15"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse SDK"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"
end
