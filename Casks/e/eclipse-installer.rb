cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.29.0,2023-09"
  sha256 arm:   "2fea2336863d984667ec978ba3fe8bfd7ab797f36ccdc77e61fa9f7a004c1e8e",
         intel: "f7eb743762f90855fc8056a7054362005691da335b5e84e3dc2f05e0fa1a3efb"

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
