cask "eclipse-jee" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.36.0,2025-06"
  sha256 arm:   "cdee1f8c4fa112f66b9cffb428227104c5373d7b9a3ff738c75ccbb8a30cb906",
         intel: "dc176b0ea0995807300e44d6f83e3a4a6bcbe121640c4adf39b629492f23b1f1"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-jee-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&mirror_id=1"
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
