cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.40,2026-06"
  sha256 arm:   "d24c597d2153367c19263376a62206e595dcc5ccd6c7067d163881b13b7b93a4",
         intel: "f0f3fc6e9b43b5a0280f9f09aea28c4b26df995782b30b5c6824a77b4bd832a5"

  url "https://www.eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-jre-#{arch}.dmg&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  desc "Install and update your Eclipse Development Environment"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: :big_sur

  app "Eclipse Installer.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.oomph.setup.installer.product.with-jre.restricted.plist",
    "~/Library/Saved Application State/org.eclipse.oomph.setup.installer.product.with-jre.restricted.savedState",
  ]

  caveats do
    depends_on_java
  end
end
