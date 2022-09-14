cask "eclipse-installer" do
  arch arm: "aarch64", intel: "mac64"

  version "4.25.0,2022-09"
  sha256 arm:   "5836c85d1592c9d28ff8ea2c4cb0abea76ca5e24af4e5f60e7c4b4065c683fd7",
         intel: "4005fcf9ef11813d8ea8cabd21153c639a6e951d42f73c2941b3f119dcd668b9"

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-#{arch}.tar.gz&r=1"
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
