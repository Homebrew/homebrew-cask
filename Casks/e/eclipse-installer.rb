cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.37.0,2025-09"
  sha256 arm:   "d5f05a764d7c4e36bf530e24606bb9e447843b88b8221f1974f225618569e924",
         intel: "41b72561dd058a9afb670fe682954eba9eefee8e5bde6f4f5a527ab2c504181e"

  url "https://www.eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-jre-#{arch}.dmg&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  desc "Install and update your Eclipse Development Environment"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  app "Eclipse Installer.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.oomph.setup.installer.product.with-jre.restricted.plist",
    "~/Library/Saved Application State/org.eclipse.oomph.setup.installer.product.with-jre.restricted.savedState",
  ]

  caveats do
    depends_on_java
  end
end
