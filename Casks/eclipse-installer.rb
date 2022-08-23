cask "eclipse-installer" do
  arch arm: "aarch64", intel: "mac64"

  version "4.24.0,2022-06"
  sha256 arm:   "b093b562ba17398075f5cdcca617494436a19819d0d3c4c445adc0890c2ca3e6",
         intel: "125e008c6da26301c12c9c6ddaa309090333e9371b152deea507c0cefeeb035e"

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
