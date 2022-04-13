cask "isyncer" do
  version "3.9.0"
  sha256 "552e558f99e4ccdec9e2ec1adfda650851676ac0769fd9ceafcd7803b7a7de37"

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
