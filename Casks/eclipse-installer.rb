cask "eclipse-installer" do
  version "4.22.0,2021-12"
  sha256 "e6e3b1d34c6023eb01b8a01e34ac40527e09b17d6a21ec51b599200b1d79c4f0"

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
