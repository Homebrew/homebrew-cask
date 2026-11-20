cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.41,2026-09"
  sha256 arm:   "e67e0187f1df1ef18704d66f0227b7bef1bff3619446f6c76d14b346324ce390",
         intel: "b018128bdd998d8a4f0e6e8ed5471cd0b62ff937d888c8e27539f3f39dcd131c"

  url "https://www.eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-jre-#{arch}.dmg&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  desc "Install and update your Eclipse Development Environment"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on :macos

  app "Eclipse Installer.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.oomph.setup.installer.product.with-jre.restricted.plist",
    "~/Library/Saved Application State/org.eclipse.oomph.setup.installer.product.with-jre.restricted.savedState",
  ]

  caveats do
    depends_on_java
  end
end
