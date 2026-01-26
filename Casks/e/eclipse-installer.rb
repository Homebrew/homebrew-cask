cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.38,2025-12"
  sha256 arm:   "9a55892a74ee3248acd272a6f33fb4b39a398611244b4ad36db373154cdbdf94",
         intel: "2f7acf752293cbbbfb45bb7ae8589d888546cb7bf67ccfacd3268fcbdff0cb66"

  url "https://www.eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-jre-#{arch}.dmg&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  desc "Install and update your Eclipse Development Environment"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  app "Eclipse Installer.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.oomph.setup.installer.product.with-jre.restricted.plist",
    "~/Library/Saved Application State/org.eclipse.oomph.setup.installer.product.with-jre.restricted.savedState",
  ]

  caveats do
    depends_on_java
  end
end
