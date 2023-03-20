cask "isyncer" do
  version "4.0.0"
  sha256 "e96d0b54d6cf3905b1d13eab1c1560c853ea8e12111f22e44222f015d23f95f9"

  url "https://www.isyncer.de/system/iSyncerV#{version}mac-installer.tgz"
  name "iSyncer"
  desc "Apple Music playlist exporting tool"
  homepage "https://www.isyncer.de/"

  livecheck do
    url "https://www.isyncer.de/en/releases/"
    regex(/href=.*?iSyncer[._-]?v?(\d+(?:\.\d+)+)[._-]?mac[._-]installer\.t/i)
  end

  pkg "iSyncer-installer-#{version}.pkg"

  uninstall pkgutil: "main.ISyncer.*"
end
