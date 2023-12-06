cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.30.0,2023-12"
  sha256 arm:   "6bc9c93b9f2b5667f4e18e75a1cab9e098b37690e4bab01b42ddeb22ff6c5f43",
         intel: "2e724e561c8e5b3505aeb05b9d09d9d17df099810727537fdb492c88a3147610"

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
