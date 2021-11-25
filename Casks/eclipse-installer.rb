cask "eclipse-installer" do
  version "4.21.0,2021-09"
  sha256 "111f77a2ac0c6e474af6da8168691c45af50728447f00a3e303fd65c178b1b5a"

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-mac64.tar.gz&r=1"
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
