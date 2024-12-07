cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.34.0,2024-12"
  sha256 arm:   "d0a5bb9888e9762ea25f0915f2c1be178b942104c4dcfcd995ac051d06998539",
         intel: "3e88d9f4b4c9d532221c90ad8c6d3a0ad921d76d80f05a2d8437d1e4ae233cd9"

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
