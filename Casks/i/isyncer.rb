cask "isyncer" do
  version "4.2.0"
  sha256 "9179d36369778c4dab6a323e8504703db378dc06f80d5ef9259d2ebe4c4d4a24"

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

  caveats do
    requires_rosetta
  end
end
