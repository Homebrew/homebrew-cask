cask "eclipse-installer" do
  arch = Hardware::CPU.intel? ? "mac64" : "aarch64"

  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "2234df83b87d859287d4463d5c6c45b5f1def7d31ff0907eb6978a3a150a1192"
  else
    sha256 "bb171712fd37f5a7b252969dd93abd4bb4a743059447e8410bfa7a3cbdd6166a"
  end

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
