cask "cloud-pbx" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "44.12.0"
    sha256 "60858f72adac311c69c3eec5b591afd2bb11eeb76fefc015fb1d5e9a0f07328a"
  end
  on_intel do
    version "44.12"
    sha256 "b9dcd00b3ba09758cd53204f085e3d4294b6154eeb6cb2a481e608c8aa178e21"
  end

  url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/desktop-clients/cloud-pbx-2.0-#{arch}_v#{version}",
      verified: "cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/desktop-clients/"
  name "Cloud PBX"
  desc "Cloud-based telephone system"
  homepage "https://geschaeftskunden.telekom.de/internet-dsl/tarife/festnetz-internet-dsl/companyflex/cloud-pbx"

  livecheck do
    url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/downloads"
    regex(%r{href=.*?/cloud[._-]pbx[._-]2\.0[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)}i)
  end

  app "Cloud PBX 2.0.app"

  zap trash: [
    "~/Library/Application Support/Cisco Spark",
    "~/Library/Application Support/Telekom Deutschland GmbH",
    "~/Library/Caches/Telekom Deutschland GmbH",
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
    "~/Library/Preferences/com.broadsoft.communicator.plist",
    "~/Library/Preferences/de.deutschland-lan.Cloud PBX.plist",
    "~/Library/Saved Application State/Cisco-Systems.Spark.savedState",
    "~/Library/Saved Application State/com.broadsoft.communicator.savedState",
  ]
end
