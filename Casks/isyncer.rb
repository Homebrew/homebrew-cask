cask "isyncer" do
  version "3.7.0"
  sha256 "24e1a0e8217531250c2c5e90682295b8036395b4e69f659fe863091e4bb1526f"

  url "https://www.isyncer.de/system/iSyncerV#{version}mac-installer.tgz"
  name "iSyncer"
  desc "Apple Music playlist exporting tool"
  homepage "https://www.isyncer.de/"

  livecheck do
    url "https://www.isyncer.de/en/releases/"
    strategy :page_match
    regex(%r{href=.*?/iSyncerV(\d+(?:\.\d+)*)mac-installer\.tgz}i)
  end

  pkg "iSyncer-installer-#{version}.pkg"

  uninstall pkgutil: "main.ISyncer.*"
end
