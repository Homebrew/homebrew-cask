cask "eclipse-installer" do
  version "4.17.0,2020-09:R"
  sha256 "0e87c072c2c5c203a21ca5a14899aa28ce9c3331b60157083a85ea17e12509bb"

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name "Eclipse Installer"
  homepage "https://eclipse.org/"

  app "Eclipse Installer.app"

  caveats do
    depends_on_java
  end
end
