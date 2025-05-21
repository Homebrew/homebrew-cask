cask "cloud-pbx" do
  arch arm: "arm", intel: "intel"

  version "45.4.0"
  sha256 arm:   "7bd2ddb62cb23300fdb5e712d72766dfdb87eeec129c08da7f232c80489aefaa",
         intel: "9e72dfc1e9fa4c84bb549de39bc9453d1f1f06a745ae70b6b25ae9c3385b0e68"

  url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/desktop-clients/cloud-pbx-2.0-#{arch}_v#{version}",
      verified: "cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/desktop-clients/"
  name "Cloud PBX"
  desc "Cloud-based telephone system"
  homepage "https://geschaeftskunden.telekom.de/internet-dsl/tarife/festnetz-internet-dsl/companyflex/cloud-pbx"

  livecheck do
    url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/downloads"
    regex(%r{href=.*?/cloud[._-]pbx[._-]2\.0[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :catalina"

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
