cask "eclipse-jee" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "135c2588014f56cb5edaf27f517a56a124663aa9752927d40a782b27945ece3d"
  else
    sha256 "c8eeffc744c935d5bae47483b9671ca32b5e206ea84ab07c2e9c70095f6bf563"
  end

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
