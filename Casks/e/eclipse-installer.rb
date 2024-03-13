cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.31.0,2024-03"
  sha256 arm:   "a3a25305ee84565cd41067bde903a9864de65ea152af2675f78cd7f3962e5d2b",
         intel: "64c18e047827cf26462bf009f86489bd1b86dddc172902846342e03e6b7b8c2e"

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
