cask "eclipse-installer" do
  arch = Hardware::CPU.intel? ? "mac64" : "aarch64"

  version "4.24.0,2022-06"

  if Hardware::CPU.intel?
    sha256 "cca180dfd69704557c848df87198652ea848cc028a69973bc929b51ea6d95efd"
  else
    sha256 "c83cf7237889b5df8c5d11d74fcac03e89eaaa110f476eaa6353c5abe374e5c9"
  end

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.csv.second}/R/eclipse-inst-jre-mac-#{arch}.dmg&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  desc "Install and update your Eclipse Development Environment"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  app "Eclipse Installer.app"

end
