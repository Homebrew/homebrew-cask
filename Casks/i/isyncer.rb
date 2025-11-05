cask "isyncer" do
  version "4.3.0"
  sha256 "15b2854bf6cac10b2b36efad9b5d9d15b033e50ffbe833380bb2b61a7fd470ab"

  url "https://www.isyncer.de/system/iSyncerV#{version}mac-installer.tgz"
  name "iSyncer"
  desc "Apple Music playlist exporting tool"
  homepage "https://www.isyncer.de/"

  livecheck do
    url "https://www.isyncer.de/en/releases/"
    regex(/href=.*?iSyncer[._-]?v?(\d+(?:\.\d+)+)[._-]?mac[._-]installer\.t/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  pkg "iSyncer-installer-#{version}.pkg"

  uninstall pkgutil: "main.ISyncer.*"

  caveats do
    requires_rosetta
  end
end
