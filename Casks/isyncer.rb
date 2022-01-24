cask "isyncer" do
  version "3.8.0"
  sha256 "a3a3df7662cbf21f22b7ed78603b3b900b249635555b5b94ad11bf561d417348"

  url "https://www.isyncer.de/system/iSyncerV#{version}mac-installer.tgz"
  name "iSyncer"
  desc "Apple Music playlist exporting tool"
  homepage "https://www.isyncer.de/"

  livecheck do
    url "https://www.isyncer.de/en/releases/"
    regex(%r{href=.*?/iSyncerv?(\d+(?:\.\d+)+)mac[._-]installer\.tgz}i)
  end

  pkg "iSyncer-installer-#{version}.pkg"

  uninstall pkgutil: "main.ISyncer.*"
end
