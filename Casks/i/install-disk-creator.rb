cask "install-disk-creator" do
  version "1.5"
  sha256 :no_check

  url "https://macdaddy.io/InstallDiskCreator.zip"
  name "Install Disk Creator"
  desc "Utility to create bootable system install discs"
  homepage "https://macdaddy.io/install-disk-creator/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Install Disk Creator.app"

  zap trash: "~/Library/Saved Application State/io.macdaddy.Install-Disk-Creator.savedState"
end
