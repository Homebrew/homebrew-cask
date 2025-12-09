cask "cloud-pbx" do
  arch arm: "arm", intel: "intel"

  version "45.11.1"
  sha256 arm:   "8cff837628cd6640dd85d62e6daff1988555482174ac1d77085fdf619290b3c3",
         intel: "06a018c5245171b6b813fa97e7b8db7612f73dde9844395cece7a54e322a08fb"

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
