cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.28.0,2023-06"
  sha256 arm:   "4403a6cb2e98bb45c7bbb24ec2bfe116af8b875fff2a8c2341cbdbd45a2f299e",
         intel: "620521e1c6906d6fda3ecee05dc2b67931701123ff951a513b338849e563a5a1"

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
