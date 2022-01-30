cask "eclipse-jee" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.22.0,2021-12"

  if Hardware::CPU.intel?
    sha256 "3a4d32951ddb2b1a5e87ed31a4fa49bf16516407152f49c1ad82b18931fc9b57"
  else
    sha256 "858075dcf46e3ac4e9894688f4e006d127dbccd8cfc8e97c556d5f53d520072d"
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
