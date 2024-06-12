cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.31.0,2024-06"
  sha256 arm:   "550eb253d260c5b74c3b4f39314d75391a8c0486bbbbc9bc4b8b6daa61459dd7",
         intel: "539e2e1d9e0010b11ba8983a5a74bb33b7057eff077d779da8efd0ff52cde387"

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
