cask "eclipse-jee" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.28.0,2023-06"
  sha256 arm:   "345df2715b2ab24c80f75e90a900bd4d3a1a57a34072e6d997e3ad9f86e3086e",
         intel: "4ce6ebc62bc329090815ec476a9b56b549ae708339467cab5c6f4eb6bce01263"

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
