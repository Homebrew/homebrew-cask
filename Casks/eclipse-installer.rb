cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.27.0,2023-03"
  sha256 arm:   "72b0518d0a3c4fb8b758b7c68c3ab71e80138bf5e585ca5864c1cdc60f0361d3",
         intel: "a5e9bd0a477b458a93f14d26506f95c05fcd3489cf26f1c620b9f604a5230a90"

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
