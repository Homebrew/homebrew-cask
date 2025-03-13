cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.35.0,2025-03"
  sha256 arm:   "b56d8cf2ed2d1d534902284052193d6dec912c8d37ddb37f09fae2c7e5876713",
         intel: "818c36cb5725e5c3d1670a3a8a221b6f6069679cfd10b00611d21f551b02ec2c"

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
