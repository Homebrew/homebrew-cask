cask "eclipse-installer" do
  arch arm: "mac-aarch64", intel: "mac64"

  version "4.25.0,2022-09"
  sha256 arm:   "a7f3bc7bc48ca1c313e548c7cbf5ec63ec33d88d8b2c6184d07e8f99bffdb20d",
         intel: "ae7caff2e72323d506ca1a9a7ff773a1a8ef9b3f60738d52a19b8ff43244d3ac"

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
