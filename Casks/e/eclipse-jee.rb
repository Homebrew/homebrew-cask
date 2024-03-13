cask "eclipse-jee" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-03"
  sha256 arm:   "a7bd58fd4645d295e959f244497c38ddcf86667cb21426980dc52ccfb131e977",
         intel: "80a7365b336804e08bc047fa22f0391416e5262ef85cbe96fe6613aa8f445292"

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
