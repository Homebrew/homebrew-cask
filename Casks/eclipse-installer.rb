cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.26.0,2022-12"
  sha256 arm:   "f6d2908fc427041a40d0ceb7452d2edda00c8c58edb72c92a3d66123d07155e3",
         intel: "902a2c408dd41025a2b67edb0a237dd637ed5af07cbd3d44c277e95d88d3c5d6"

  url "https://www.eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-jre-#{arch}.dmg&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  desc "Install and update your Eclipse Development Environment"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  app "Eclipse Installer.app"

  caveats do
    depends_on_java
  end
end
