cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.39,2026-03"
  sha256 arm:   "ffd6345617a06d85d48376c326d3479cd0a665fe35e613a1fe444050048c99d0",
         intel: "a1fdab77ff3749750cf80bac2e6933f2d8415dc2b6e5be9b81df9e181daa3513"

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
