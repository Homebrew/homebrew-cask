cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.36.0,2025-06"
  sha256 arm:   "ab63c4bb8815c18d7b0be455ba7093deb0dfeff0263af8f2f668cb550f3e1493",
         intel: "c963ae263b2af3fb3920fe781d4996493db9b2fb9f779cc720818df041522376"

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
