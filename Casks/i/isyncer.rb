cask "isyncer" do
  version "4.1.0"
  sha256 "70a9b492a99749ca739faf38485195ea3d19070f41f329abe2bc7dbc6b34a886"

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
