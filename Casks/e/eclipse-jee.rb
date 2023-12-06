cask "eclipse-jee" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,2023-12"
  sha256 arm:   "43cf980b8ec692fcf043f0326e328c53c8cac9ca6eb6791dc59c0b05f9bb8de6",
         intel: "0cd2d6ccc8c5cf889cee196a0112f9dcc959e9aaf842d715ba607c362da64059"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-jee-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java EE Developers"
  desc "Eclipse IDE for Java EE developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse JEE.app"

  zap trash: [
    "~/Library/Caches/org.eclipse.platform.ide",
    "~/Library/Cookies/org.eclipse.platform.ide.binarycookies",
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]

  caveats do
    depends_on_java
  end
end
