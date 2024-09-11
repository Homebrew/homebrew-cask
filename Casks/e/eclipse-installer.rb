cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.33.0,2024-09"
  sha256 arm:   "bcf25036a01f04a338c8de1564b09ca971c7a6ee37faf8822b4d6b6370cbbbc3",
         intel: "5b2baec3383711d31340e28882db397a53d6cb0debfb93674199fbf9e56e8b2e"

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
